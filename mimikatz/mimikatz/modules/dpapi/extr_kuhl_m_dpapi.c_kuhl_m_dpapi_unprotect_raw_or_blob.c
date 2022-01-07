
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_13__ {int member_0; int member_1; int dwPromptFlags; int member_3; int * member_2; } ;
struct TYPE_10__ {int * keyHash; } ;
struct TYPE_12__ {TYPE_1__ data; } ;
struct TYPE_11__ {int guidMasterKey; } ;
typedef TYPE_2__* PKULL_M_DPAPI_BLOB ;
typedef TYPE_3__* PKUHL_M_DPAPI_OE_MASTERKEY_ENTRY ;
typedef int * PCWSTR ;
typedef int * PBYTE ;
typedef int LPWSTR ;
typedef int LPVOID ;
typedef scalar_t__ LPCWSTR ;
typedef int * LPCVOID ;
typedef int DWORD ;
typedef TYPE_4__ CRYPTPROTECT_PROMPTSTRUCT ;
typedef scalar_t__ BOOL ;


 int CRYPTPROTECT_LOCAL_MACHINE ;
 int CRYPTPROTECT_PROMPT_ON_PROTECT ;
 int CRYPTPROTECT_PROMPT_ON_UNPROTECT ;
 int CRYPTPROTECT_PROMPT_STRONG ;
 int CRYPTPROTECT_UI_FORBIDDEN ;
 scalar_t__ FALSE ;
 scalar_t__ GetLastError () ;
 int LocalFree (int *) ;
 int MIMIKATZ ;
 scalar_t__ NTE_BAD_KEY_STATE ;
 int PRINT_ERROR (char*) ;
 int PRINT_ERROR_AUTO (char*) ;
 int kprintf (char*,...) ;
 int kuhl_m_dpapi_oe_masterkey_add (int *,int *,int) ;
 int kuhl_m_dpapi_oe_masterkey_descr (TYPE_3__*) ;
 TYPE_3__* kuhl_m_dpapi_oe_masterkey_get (int *) ;
 TYPE_2__* kull_m_dpapi_blob_create (int *) ;
 int kull_m_dpapi_blob_delete (TYPE_2__*) ;
 int kull_m_dpapi_displayPromptFlags (int ) ;
 scalar_t__ kull_m_dpapi_unprotect_raw_or_blob (int *,int,int *,int *,int,TYPE_4__*,int,int *,int*,int *,int,int *) ;
 scalar_t__ kull_m_string_args_byName (int,int **,char*,int **,int *) ;
 int kull_m_string_displayGUID (int *) ;
 int kull_m_string_stringToHexBuffer (int *,int **,int*) ;
 int kull_m_string_wprintf_hex (int *,int,int ) ;

BOOL kuhl_m_dpapi_unprotect_raw_or_blob(LPCVOID pDataIn, DWORD dwDataInLen, LPWSTR *ppszDataDescr, int argc, wchar_t * argv[], LPCVOID pOptionalEntropy, DWORD dwOptionalEntropyLen, LPVOID *pDataOut, DWORD *dwDataOutLen, LPCWSTR pText)
{
 BOOL status = FALSE;
 PCWSTR szEntropy, szMasterkey, szPassword = ((void*)0);
 CRYPTPROTECT_PROMPTSTRUCT promptStructure = {sizeof(CRYPTPROTECT_PROMPTSTRUCT), CRYPTPROTECT_PROMPT_ON_PROTECT | CRYPTPROTECT_PROMPT_ON_UNPROTECT | CRYPTPROTECT_PROMPT_STRONG, ((void*)0), MIMIKATZ}, *pPrompt;

 PBYTE masterkey = ((void*)0), entropy = ((void*)0);
 DWORD masterkeyLen = 0, entropyLen = 0, flags = 0;
 PKULL_M_DPAPI_BLOB blob;
 PKUHL_M_DPAPI_OE_MASTERKEY_ENTRY entry = ((void*)0);
 BOOL isNormalAPI = kull_m_string_args_byName(argc, argv, L"unprotect", ((void*)0), ((void*)0));

 if(kull_m_string_args_byName(argc, argv, L"masterkey", &szMasterkey, ((void*)0)))
  kull_m_string_stringToHexBuffer(szMasterkey, &masterkey, &masterkeyLen);
 kull_m_string_args_byName(argc, argv, L"password", &szPassword, ((void*)0));
 if(kull_m_string_args_byName(argc, argv, L"entropy", &szEntropy, ((void*)0)))
  kull_m_string_stringToHexBuffer(szEntropy, &entropy, &entropyLen);
 pPrompt = kull_m_string_args_byName(argc, argv, L"prompt", ((void*)0), ((void*)0)) ? &promptStructure : ((void*)0);

 if(kull_m_string_args_byName(argc, argv, L"machine", ((void*)0), ((void*)0)))
  flags |= CRYPTPROTECT_LOCAL_MACHINE;

 if(blob = kull_m_dpapi_blob_create(pDataIn))
 {
  entry = kuhl_m_dpapi_oe_masterkey_get(&blob->guidMasterKey);
  if(entry || (masterkey && masterkeyLen) || isNormalAPI)
  {
   if(pText)
    kprintf(L"%s", pText);

   if(isNormalAPI)
   {
    kprintf(L" * using CryptUnprotectData API\n");
   }

   if(entry)
   {
    kprintf(L" * volatile cache: ");
    kuhl_m_dpapi_oe_masterkey_descr(entry);
   }
   if(masterkey)
   {
    kprintf(L" * masterkey     : ");
    kull_m_string_wprintf_hex(masterkey, masterkeyLen, 0);
    kprintf(L"\n");
   }
   if(pPrompt)
   {
    kprintf(L" > prompt flags  : ");
    kull_m_dpapi_displayPromptFlags(pPrompt->dwPromptFlags);
    kprintf(L"\n");
   }
   else flags |= CRYPTPROTECT_UI_FORBIDDEN;
   if(entropy)
   {
    kprintf(L" > entropy       : ");
    kull_m_string_wprintf_hex(entropy, entropyLen, 0);
    kprintf(L"\n");
   }
   if(szPassword)
    kprintf(L" > password      : %s\n", szPassword);

   if(entry)
    status = kull_m_dpapi_unprotect_raw_or_blob(pDataIn, dwDataInLen, ppszDataDescr, (pOptionalEntropy && dwOptionalEntropyLen) ? pOptionalEntropy : entropy, (pOptionalEntropy && dwOptionalEntropyLen) ? dwOptionalEntropyLen : entropyLen, ((void*)0), 0, pDataOut, dwDataOutLen, entry->data.keyHash, sizeof(entry->data.keyHash), szPassword);

   if(!status && ((masterkey && masterkeyLen) || isNormalAPI))
   {
    status = kull_m_dpapi_unprotect_raw_or_blob(pDataIn, dwDataInLen, ppszDataDescr, (pOptionalEntropy && dwOptionalEntropyLen) ? pOptionalEntropy : entropy, (pOptionalEntropy && dwOptionalEntropyLen) ? dwOptionalEntropyLen : entropyLen, pPrompt, flags, pDataOut, dwDataOutLen, masterkey, masterkeyLen, szPassword);
    if(status && masterkey && masterkeyLen)
     kuhl_m_dpapi_oe_masterkey_add(&blob->guidMasterKey, masterkey, masterkeyLen);

    if(!status && !masterkey)
    {
     if(GetLastError() == NTE_BAD_KEY_STATE)
     {
      PRINT_ERROR(L"NTE_BAD_KEY_STATE, needed Masterkey is: ");
      kull_m_string_displayGUID(&blob->guidMasterKey);
      kprintf(L"\n");
     }
     else PRINT_ERROR_AUTO(L"CryptUnprotectData");
    }
   }

  }
  kull_m_dpapi_blob_delete(blob);
 }

 if(entropy)
  LocalFree(entropy);
 if(masterkey)
  LocalFree(masterkey);
 return status;
}
