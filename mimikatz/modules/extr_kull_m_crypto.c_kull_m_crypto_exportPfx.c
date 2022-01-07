
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * pbData; int cbData; int * member_1; int member_0; } ;
typedef int LPCWSTR ;
typedef int HCERTSTORE ;
typedef TYPE_1__ CRYPT_DATA_BLOB ;
typedef int BYTE ;
typedef int BOOL ;


 int EXPORT_PRIVATE_KEYS ;
 int FALSE ;
 int LPTR ;
 scalar_t__ LocalAlloc (int ,int ) ;
 int LocalFree (int *) ;
 int MIMIKATZ ;
 scalar_t__ PFXExportCertStoreEx (int ,TYPE_1__*,int ,int *,int) ;
 int PRINT_ERROR_AUTO (char*) ;
 int REPORT_NOT_ABLE_TO_EXPORT_PRIVATE_KEY ;
 int kull_m_file_writeData (int ,int *,int ) ;

BOOL kull_m_crypto_exportPfx(HCERTSTORE hStore, LPCWSTR filename)
{
 BOOL isExported = FALSE;
 CRYPT_DATA_BLOB bDataBlob = {0, ((void*)0)};
 if(PFXExportCertStoreEx(hStore, &bDataBlob, MIMIKATZ, ((void*)0), EXPORT_PRIVATE_KEYS | REPORT_NOT_ABLE_TO_EXPORT_PRIVATE_KEY))
 {
  if(bDataBlob.pbData = (BYTE *) LocalAlloc(LPTR, bDataBlob.cbData))
  {
   if(PFXExportCertStoreEx(hStore, &bDataBlob, MIMIKATZ, ((void*)0), EXPORT_PRIVATE_KEYS | REPORT_NOT_ABLE_TO_EXPORT_PRIVATE_KEY))
    isExported = kull_m_file_writeData(filename, bDataBlob.pbData, bDataBlob.cbData);
   LocalFree(bDataBlob.pbData);
  }
 }
 if(!isExported)
  PRINT_ERROR_AUTO(L"PFXExportCertStoreEx");
 return isExported;
}
