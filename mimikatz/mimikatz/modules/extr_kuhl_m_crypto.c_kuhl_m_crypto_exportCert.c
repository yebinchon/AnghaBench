
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_8__ {int * member_1; int member_0; } ;
struct TYPE_7__ {int cbCertEncoded; int pbCertEncoded; } ;
typedef TYPE_1__* PCCERT_CONTEXT ;
typedef int HCERTSTORE ;
typedef int DWORD ;
typedef TYPE_2__ CRYPT_DATA_BLOB ;
typedef scalar_t__ BOOL ;


 int CERT_CLOSE_STORE_FORCE_FLAG ;
 int CERT_STORE_ADD_NEW ;
 int CERT_STORE_CREATE_NEW_FLAG ;
 int CERT_STORE_PROV_MEMORY ;
 scalar_t__ CertAddCertificateContextToStore (int ,TYPE_1__*,int ,TYPE_1__**) ;
 int CertCloseStore (int ,int ) ;
 int CertFreeCertificateContext (TYPE_1__*) ;
 int CertOpenStore (int ,int ,int ,int ,int *) ;
 scalar_t__ FALSE ;
 int LocalFree (int *) ;
 int PRINT_ERROR_AUTO (char*) ;
 int kprintf (char*,...) ;
 int * kuhl_m_crypto_generateFileName (int const*,int const*,int const,int const*,char*) ;
 scalar_t__ kull_m_crypto_exportPfx (int ,int *) ;
 scalar_t__ kull_m_file_writeData (int *,int ,int ) ;

void kuhl_m_crypto_exportCert(PCCERT_CONTEXT pCertificate, BOOL havePrivateKey, const wchar_t * systemStore, const wchar_t * store, const DWORD index, const wchar_t * name)
{
 wchar_t *fileNameBuffer;
 BOOL isExported;
 HCERTSTORE hTempStore = CertOpenStore(CERT_STORE_PROV_MEMORY, 0, 0, CERT_STORE_CREATE_NEW_FLAG, ((void*)0));
 PCCERT_CONTEXT pCertContextCopy = ((void*)0);
 CRYPT_DATA_BLOB bDataBlob = {0, ((void*)0)};

 if(fileNameBuffer = kuhl_m_crypto_generateFileName(systemStore, store, index, name, L"der"))
 {
  isExported = kull_m_file_writeData(fileNameBuffer, pCertificate->pbCertEncoded, pCertificate->cbCertEncoded);
  kprintf(L"\tPublic export  : %s - ", isExported ? L"OK" : L"KO");
  if(isExported)
   kprintf(L"\'%s\'\n", fileNameBuffer);
  else PRINT_ERROR_AUTO(L"CreateFile");
  LocalFree(fileNameBuffer);
 }
 else PRINT_ERROR_AUTO(L"kuhl_m_crypto_generateFileName");

 if(havePrivateKey)
 {
  if(fileNameBuffer = kuhl_m_crypto_generateFileName(systemStore, store, index, name, L"pfx"))
  {
   isExported = FALSE;
   if(CertAddCertificateContextToStore(hTempStore, pCertificate, CERT_STORE_ADD_NEW, &pCertContextCopy))
   {
    isExported = kull_m_crypto_exportPfx(hTempStore, fileNameBuffer);
    CertFreeCertificateContext(pCertContextCopy);
   }
   kprintf(L"\tPrivate export : %s - ", isExported ? L"OK" : L"KO");
   if(isExported)
    kprintf(L"\'%s\'\n", fileNameBuffer);
   else PRINT_ERROR_AUTO(L"Export / CreateFile");
   LocalFree(fileNameBuffer);
  }
  else PRINT_ERROR_AUTO(L"kuhl_m_crypto_generateFileName");
 }
 kprintf(L"\n");
 CertCloseStore(hTempStore, CERT_CLOSE_STORE_FORCE_FLAG);
}
