
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int NTSTATUS ;


 scalar_t__ FreeLibrary (scalar_t__) ;
 int * K_CPExportKey ;
 int STATUS_SUCCESS ;
 scalar_t__ kuhl_m_crypto_hRsaEnh ;

NTSTATUS kuhl_m_crypto_clean()
{
 if(kuhl_m_crypto_hRsaEnh)
  if(FreeLibrary(kuhl_m_crypto_hRsaEnh))
   K_CPExportKey = ((void*)0);
 return STATUS_SUCCESS;
}
