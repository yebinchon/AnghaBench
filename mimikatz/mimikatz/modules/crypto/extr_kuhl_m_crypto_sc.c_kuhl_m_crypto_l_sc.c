
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int SCARDHANDLE ;
typedef int SCARDCONTEXT ;
typedef scalar_t__* PBYTE ;
typedef int NTSTATUS ;
typedef scalar_t__* LPWSTR ;
typedef scalar_t__ LONG ;
typedef int DWORD ;


 int CRYPT_SILENT ;
 scalar_t__ ERROR_FILE_NOT_FOUND ;
 int FALSE ;
 int LocalFree (scalar_t__*) ;
 int PRINT_ERROR (char*,scalar_t__,...) ;
 int SCARD_ALL_READERS ;
 int SCARD_ATTR_ATR_STRING ;
 int SCARD_AUTOALLOCATE ;
 int SCARD_LEAVE_CARD ;
 int SCARD_PROTOCOL_T0 ;
 int SCARD_PROTOCOL_T1 ;
 int SCARD_PROVIDER_CARD_MODULE ;
 int SCARD_PROVIDER_CSP ;
 int SCARD_PROVIDER_KSP ;
 int SCARD_PROVIDER_PRIMARY ;
 int SCARD_SCOPE_SYSTEM ;
 int SCARD_SHARE_SHARED ;
 scalar_t__ SCARD_S_SUCCESS ;
 scalar_t__ SCARD_W_REMOVED_CARD ;
 scalar_t__ SCardConnect (int ,scalar_t__*,int ,int,int *,int *) ;
 int SCardDisconnect (int ,int ) ;
 scalar_t__ SCardEstablishContext (int ,int *,int *,int *) ;
 int SCardFreeMemory (int ,scalar_t__*) ;
 scalar_t__ SCardGetAttrib (int ,int ,scalar_t__*,int *) ;
 scalar_t__ SCardGetCardTypeProviderName (int ,scalar_t__*,int ,scalar_t__*,int *) ;
 scalar_t__ SCardListCards (int ,scalar_t__*,int *,int ,scalar_t__*,int *) ;
 scalar_t__ SCardListReaders (int ,int ,scalar_t__*,int *) ;
 int SCardReleaseContext (int ) ;
 int STATUS_SUCCESS ;
 int kprintf (char*,...) ;
 int kuhl_m_crypto_l_keys_capi (scalar_t__*,scalar_t__*,int ,int ,int ,int *) ;
 int kuhl_m_crypto_l_keys_cng (scalar_t__*,scalar_t__*,int ,int ,int *) ;
 int kuhl_m_crypto_l_mdr (scalar_t__*,int ,int ,scalar_t__*,scalar_t__*,int ) ;
 scalar_t__* kuhl_m_crypto_l_sc_containerFromReader (scalar_t__*) ;
 int kuhl_m_crypto_l_sc_prop (int ,scalar_t__*) ;
 int kuhl_m_crypto_l_sc_provtypefromname (scalar_t__*) ;
 int kull_m_string_wprintf_hex (scalar_t__*,int ,int ) ;
 scalar_t__ wcslen (scalar_t__*) ;

NTSTATUS kuhl_m_crypto_l_sc(int argc, wchar_t * argv[])
{
 SCARDCONTEXT hContext;
 SCARDHANDLE hCard;
 PBYTE atr;
 LONG status;
 LPWSTR mszReaders = ((void*)0), pReader, mszCards = ((void*)0), pCard, szProvider = ((void*)0), szContainer;
 DWORD dwLen = SCARD_AUTOALLOCATE, dwAtrLen;

 status = SCardEstablishContext(SCARD_SCOPE_SYSTEM, ((void*)0), ((void*)0), &hContext);
 if(status == SCARD_S_SUCCESS)
 {
  status = SCardListReaders(hContext, SCARD_ALL_READERS, (LPWSTR) &mszReaders, &dwLen);
  if(status == SCARD_S_SUCCESS)
  {
   kprintf(L"SmartCard readers:");
   for(pReader = mszReaders; *pReader; pReader += wcslen(pReader) + 1)
   {
    kprintf(L"\n * %s\n", pReader);
    kuhl_m_crypto_l_sc_prop(hContext, pReader);
    if(szContainer = kuhl_m_crypto_l_sc_containerFromReader(pReader))
    {
     status = SCardConnect(hContext, pReader, SCARD_SHARE_SHARED, SCARD_PROTOCOL_T0 | SCARD_PROTOCOL_T1, &hCard, &dwLen);
     if(status == SCARD_S_SUCCESS)
     {
      dwAtrLen = SCARD_AUTOALLOCATE;
      status = SCardGetAttrib(hCard, SCARD_ATTR_ATR_STRING, (PBYTE) &atr, &dwAtrLen);
      if(status == SCARD_S_SUCCESS)
      {
       kprintf(L"   ATR  : ");
       kull_m_string_wprintf_hex(atr, dwAtrLen, 0);
       kprintf(L"\n");
       dwLen = SCARD_AUTOALLOCATE;
       status = SCardListCards(hContext, atr, ((void*)0), 0, (LPWSTR) &mszCards, &dwLen);
       if(status == SCARD_S_SUCCESS)
       {
        for(pCard = mszCards; pCard && *pCard; pCard += wcslen(pCard) + 1)
        {
         kprintf(L"   Model: %s\n", pCard);

         dwLen = SCARD_AUTOALLOCATE;
         status = SCardGetCardTypeProviderName(hContext, pCard, SCARD_PROVIDER_PRIMARY, (LPWSTR) &szProvider, &dwLen);
         if(status == SCARD_S_SUCCESS)
         {
          kprintf(L"   PRIM : %s\n", szProvider);
          SCardFreeMemory(hContext, szProvider);
         }
         else if(status != ERROR_FILE_NOT_FOUND) PRINT_ERROR(L"SCardGetCardTypeProviderName(PRIM): 0x%08x\n", status);

         dwLen = SCARD_AUTOALLOCATE;
         status = SCardGetCardTypeProviderName(hContext, pCard, SCARD_PROVIDER_CSP, (LPWSTR) &szProvider, &dwLen);
         if(status == SCARD_S_SUCCESS)
         {
          kprintf(L"   CSP  : %s\n", szProvider);
          if(dwLen = kuhl_m_crypto_l_sc_provtypefromname(szProvider))
           kuhl_m_crypto_l_keys_capi(szContainer, szProvider, dwLen, CRYPT_SILENT, FALSE, ((void*)0));
          SCardFreeMemory(hContext, szProvider);
         }
         else if(status != ERROR_FILE_NOT_FOUND) PRINT_ERROR(L"SCardGetCardTypeProviderName(CSP): 0x%08x\n", status);

         dwLen = SCARD_AUTOALLOCATE;
         status = SCardGetCardTypeProviderName(hContext, pCard, SCARD_PROVIDER_KSP, (LPWSTR) &szProvider, &dwLen);
         if(status == SCARD_S_SUCCESS)
         {
          kprintf(L"   KSP  : %s\n", szProvider);
          kuhl_m_crypto_l_keys_cng(szContainer, szProvider, 0, FALSE, ((void*)0));
          SCardFreeMemory(hContext, szProvider);
         }
         else if(status != ERROR_FILE_NOT_FOUND) PRINT_ERROR(L"SCardGetCardTypeProviderName(KSP): 0x%08x\n", status);

         dwLen = SCARD_AUTOALLOCATE;
         status = SCardGetCardTypeProviderName(hContext, pCard, SCARD_PROVIDER_CARD_MODULE, (LPWSTR) &szProvider, &dwLen);
         if(status == SCARD_S_SUCCESS)
         {
          kprintf(L"   MDRV : %s\n", szProvider);
          kuhl_m_crypto_l_mdr(szProvider, hContext, hCard, pCard, atr, dwAtrLen);
          SCardFreeMemory(hContext, szProvider);
         }
         else if(status != ERROR_FILE_NOT_FOUND) PRINT_ERROR(L"SCardGetCardTypeProviderName(MDR): 0x%08x\n", status);
        }
        SCardFreeMemory(hContext, mszCards);
       }
       else PRINT_ERROR(L"SCardListCards: 0x%08x\n", status);
       SCardFreeMemory(hContext, atr);
      }
      else PRINT_ERROR(L"SCardGetAttrib: 0x%08x (%u)\n", status, dwAtrLen);
      SCardDisconnect(hCard, SCARD_LEAVE_CARD);
     }
     else if(status != SCARD_W_REMOVED_CARD)
      PRINT_ERROR(L"SCardConnect: 0x%08x\n", status);
     LocalFree(szContainer);
    }
   }
   SCardFreeMemory(hContext, mszReaders);
  }
  else PRINT_ERROR(L"SCardListReaders: 0x%08x\n", status);
  SCardReleaseContext(hContext);
 }
 else PRINT_ERROR(L"SCardEstablishContext: 0x%08x\n", status);
 return STATUS_SUCCESS;
}
