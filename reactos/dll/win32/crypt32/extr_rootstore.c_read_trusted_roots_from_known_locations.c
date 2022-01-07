
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SecCertificateRef ;
typedef scalar_t__ OSStatus ;
typedef scalar_t__ HCERTSTORE ;
typedef size_t DWORD ;
typedef int CFDataRef ;
typedef int CFArrayRef ;
typedef scalar_t__ BOOL ;


 size_t ARRAY_SIZE (int *) ;
 int CERT_STORE_ADD_NEW ;
 int CERT_STORE_CREATE_NEW_FLAG ;
 int CERT_STORE_PROV_MEMORY ;
 int CFArrayGetCount (int ) ;
 int CFArrayGetValueAtIndex (int ,int) ;
 int CFDataGetBytePtr (int ) ;
 int CFDataGetLength (int ) ;
 int CFRelease (int ) ;
 int * CRYPT_knownLocations ;
 scalar_t__ CertAddEncodedCertificateToStore (scalar_t__,int ,int ,int ,int ,int *) ;
 int CertCloseStore (scalar_t__,int ) ;
 scalar_t__ CertOpenStore (int ,int ,int ,int ,int *) ;
 scalar_t__ FALSE ;
 unsigned int GetLastError () ;
 scalar_t__ SecKeychainItemExport (int ,int ,int ,int *,int *) ;
 scalar_t__ SecTrustCopyAnchorCertificates (int *) ;
 scalar_t__ TRUE ;
 int WARN (char*,int,unsigned int) ;
 int X509_ASN_ENCODING ;
 int check_and_store_certs (scalar_t__,scalar_t__) ;
 scalar_t__ import_certs_from_path (int ,scalar_t__,scalar_t__) ;
 int kSecFormatX509Cert ;
 scalar_t__ noErr ;

__attribute__((used)) static void read_trusted_roots_from_known_locations(HCERTSTORE store)
{
    HCERTSTORE from = CertOpenStore(CERT_STORE_PROV_MEMORY,
     X509_ASN_ENCODING, 0, CERT_STORE_CREATE_NEW_FLAG, ((void*)0));

    if (from)
    {
        DWORD i;
        BOOL ret = FALSE;
        for (i = 0; !ret && i < ARRAY_SIZE(CRYPT_knownLocations); i++)
            ret = import_certs_from_path(CRYPT_knownLocations[i], from, TRUE);
        check_and_store_certs(from, store);
    }
    CertCloseStore(from, 0);
}
