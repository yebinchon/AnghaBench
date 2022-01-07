
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PCP_EXPORTKEY ;
typedef int NTSTATUS ;


 scalar_t__ GetProcAddress (int ,char*) ;
 scalar_t__ K_CPExportKey ;
 int LoadLibrary (char*) ;
 int STATUS_NOT_FOUND ;
 int STATUS_SUCCESS ;
 int kuhl_m_crypto_hRsaEnh ;

NTSTATUS kuhl_m_crypto_init()
{
 NTSTATUS status = STATUS_NOT_FOUND;
 if(kuhl_m_crypto_hRsaEnh = LoadLibrary(L"rsaenh"))
  if(K_CPExportKey = (PCP_EXPORTKEY) GetProcAddress(kuhl_m_crypto_hRsaEnh, "CPExportKey"))
   status = STATUS_SUCCESS;
 return status;
}
