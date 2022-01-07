
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct mbedtls_x509_crt {int dummy; } ;
typedef int mbedtls_x509_crt ;
struct TYPE_7__ {int * cacert; int conf; } ;
struct TYPE_6__ {int cbCertEncoded; scalar_t__ pbCertEncoded; } ;
typedef int SecKeychainRef ;
typedef int SecCertificateRef ;
typedef TYPE_1__* PCCERT_CONTEXT ;
typedef int HCRYPTPROV ;
typedef int HCERTSTORE ;
typedef int CFTypeRef ;
typedef int CFMutableDictionaryRef ;
typedef scalar_t__ CFIndex ;
typedef int CFDataRef ;
typedef int CFArrayRef ;


 int CFArrayCreate (int *,void const**,int,int *) ;
 scalar_t__ CFArrayGetCount (int ) ;
 int CFArrayGetValueAtIndex (int ,scalar_t__) ;
 scalar_t__ CFDataGetBytePtr (int ) ;
 int CFDataGetLength (int ) ;
 int CFDictionaryCreateMutable (int *,int ,int *,int *) ;
 int CFDictionarySetValue (int ,int ,int ) ;
 int CFRelease (int ) ;
 int CertCloseStore (int ,int ) ;
 TYPE_1__* CertEnumCertificatesInStore (int ,TYPE_1__*) ;
 int CertFreeCertificateContext (TYPE_1__*) ;
 int CertOpenSystemStore (int ,char*) ;
 TYPE_2__* RTMP_TLS_ctx ;
 int SecCertificateCopyData (int ) ;
 scalar_t__ SecItemCopyMatching (int ,int *) ;
 scalar_t__ SecKeychainOpen (char*,int *) ;
 int * calloc (int,int) ;
 scalar_t__ errSecSuccess ;
 int free (int *) ;
 int kCFBooleanTrue ;
 int kSecClass ;
 int kSecClassCertificate ;
 int kSecMatchLimit ;
 int kSecMatchLimitAll ;
 int kSecMatchSearchList ;
 int kSecReturnRef ;
 int mbedtls_ssl_conf_ca_chain (int *,int *,int *) ;
 int mbedtls_x509_crt_free (int *) ;
 int mbedtls_x509_crt_init (int *) ;
 int mbedtls_x509_crt_parse_der (int *,unsigned char*,int ) ;
 scalar_t__ mbedtls_x509_crt_parse_path (int *,char*) ;

void
RTMP_TLS_LoadCerts() {
}
