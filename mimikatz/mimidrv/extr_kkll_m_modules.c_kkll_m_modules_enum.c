
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int SIZE_T ;
typedef int PVOID ;
typedef int (* PKKLL_M_MODULE_CALLBACK ) (int ,int ,int ,int *,int ,scalar_t__*) ;
typedef int PKIWI_BUFFER ;
typedef int * PAUX_MODULE_EXTENDED_INFO ;
typedef int NTSTATUS ;
typedef scalar_t__ BOOLEAN ;
typedef int AUX_MODULE_EXTENDED_INFO ;


 int AuxKlibQueryModuleInformation (int*,int,int *) ;
 scalar_t__ ExAllocatePoolWithTag (int ,int,int ) ;
 int ExFreePoolWithTag (int *,int ) ;
 scalar_t__ NT_SUCCESS (int ) ;
 int POOL_TAG ;
 int PagedPool ;
 int STATUS_SUCCESS ;
 scalar_t__ TRUE ;

NTSTATUS kkll_m_modules_enum(SIZE_T szBufferIn, PVOID bufferIn, PKIWI_BUFFER outBuffer, PKKLL_M_MODULE_CALLBACK callback, PVOID pvArg)
{
 NTSTATUS status = STATUS_SUCCESS;
 ULONG i, modulesSize, numberOfModules;
 PAUX_MODULE_EXTENDED_INFO pModules;
 BOOLEAN mustContinue = TRUE;

 status = AuxKlibQueryModuleInformation(&modulesSize, sizeof(AUX_MODULE_EXTENDED_INFO), ((void*)0));
 if(NT_SUCCESS(status) && modulesSize)
 {
  if(pModules = (PAUX_MODULE_EXTENDED_INFO) ExAllocatePoolWithTag(PagedPool, modulesSize, POOL_TAG))
  {
   numberOfModules = modulesSize / sizeof(AUX_MODULE_EXTENDED_INFO);
   status = AuxKlibQueryModuleInformation(&modulesSize, sizeof(AUX_MODULE_EXTENDED_INFO), pModules);
   for(i = 0; NT_SUCCESS(status) && mustContinue && (i < numberOfModules); i++)
    status = callback(szBufferIn, bufferIn, outBuffer, pModules + i, pvArg, &mustContinue);
   ExFreePoolWithTag(pModules, POOL_TAG);
  }
 }
 return status;
}
