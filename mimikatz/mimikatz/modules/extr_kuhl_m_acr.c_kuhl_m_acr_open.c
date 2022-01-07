
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int NTSTATUS ;
typedef scalar_t__ LONG ;
typedef int BOOL ;


 int PRINT_ERROR (char*) ;
 int SCARD_SCOPE_SYSTEM ;
 scalar_t__ SCARD_S_SUCCESS ;
 scalar_t__ SCardEstablishContext (int ,int *,int *,int *) ;
 int STATUS_SUCCESS ;
 int TRUE ;
 int kprintf (char*) ;
 int kuhl_m_acr_Comm ;
 int kuhl_m_acr_close (int ,int *) ;
 int kuhl_m_acr_hContext ;
 int kuhl_m_acr_pn532Comm ;
 scalar_t__ kull_m_acr_init (int ,char*,int ,int *,int ,int *) ;
 int kull_m_arcr_SendRecvDirect ;
 int kull_m_pn532_init (int ,int *,int ,int *) ;
 int kull_m_string_args_byName (int,int **,char*,int *,int *) ;

NTSTATUS kuhl_m_acr_open(int argc, wchar_t * argv[])
{
 LONG scStatus;
 BOOL isTrace = kull_m_string_args_byName(argc, argv, L"trace", ((void*)0), ((void*)0));

 if(!kuhl_m_acr_hContext)
 {
  scStatus = SCardEstablishContext(SCARD_SCOPE_SYSTEM, ((void*)0), ((void*)0), &kuhl_m_acr_hContext);
  if(scStatus == SCARD_S_SUCCESS)
  {
   kprintf(L"Opening ACR  : ");
   if(kull_m_acr_init(kuhl_m_acr_hContext, L"ACS ACR122 0", TRUE, ((void*)0), isTrace, &kuhl_m_acr_Comm))
   {
    kprintf(L"OK!\nOpening PN532: ");
    kull_m_pn532_init(kull_m_arcr_SendRecvDirect, &kuhl_m_acr_Comm, isTrace, &kuhl_m_acr_pn532Comm);
    kprintf(L"OK!\n");
   }
   else kuhl_m_acr_close(0, ((void*)0));
  }
 }
 else PRINT_ERROR(L"Already opened, close it first\n");
 return STATUS_SUCCESS;
}
