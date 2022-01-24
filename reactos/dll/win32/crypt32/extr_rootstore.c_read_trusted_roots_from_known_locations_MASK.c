#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  SecCertificateRef ;
typedef  scalar_t__ OSStatus ;
typedef  scalar_t__ HCERTSTORE ;
typedef  size_t DWORD ;
typedef  int /*<<< orphan*/  CFDataRef ;
typedef  int /*<<< orphan*/  CFArrayRef ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  CERT_STORE_ADD_NEW ; 
 int /*<<< orphan*/  CERT_STORE_CREATE_NEW_FLAG ; 
 int /*<<< orphan*/  CERT_STORE_PROV_MEMORY ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * CRYPT_knownLocations ; 
 scalar_t__ FUNC6 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FALSE ; 
 unsigned int FUNC9 () ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC12 (char*,int,unsigned int) ; 
 int /*<<< orphan*/  X509_ASN_ENCODING ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  kSecFormatX509Cert ; 
 scalar_t__ noErr ; 

__attribute__((used)) static void FUNC15(HCERTSTORE store)
{
    HCERTSTORE from = FUNC8(CERT_STORE_PROV_MEMORY,
     X509_ASN_ENCODING, 0, CERT_STORE_CREATE_NEW_FLAG, NULL);

    if (from)
    {
        DWORD i;
        BOOL ret = FALSE;

#ifdef HAVE_SECURITY_SECURITY_H
        OSStatus status;
        CFArrayRef rootCerts;

        status = SecTrustCopyAnchorCertificates(&rootCerts);
        if (status == noErr)
        {
            int i;
            for (i = 0; i < CFArrayGetCount(rootCerts); i++)
            {
                SecCertificateRef cert = (SecCertificateRef)CFArrayGetValueAtIndex(rootCerts, i);
                CFDataRef certData;
                if ((status = SecKeychainItemExport(cert, kSecFormatX509Cert, 0, NULL, &certData)) == noErr)
                {
                    if (CertAddEncodedCertificateToStore(store, X509_ASN_ENCODING,
                            CFDataGetBytePtr(certData), CFDataGetLength(certData),
                            CERT_STORE_ADD_NEW, NULL))
                        ret = TRUE;
                    else
                        WARN("adding root cert %d failed: %08x\n", i, GetLastError());
                    CFRelease(certData);
                }
                else
                    WARN("could not export certificate %d to X509 format: 0x%08x\n", i, (unsigned int)status);
            }
            CFRelease(rootCerts);
        }
#endif

        for (i = 0; !ret && i < FUNC0(CRYPT_knownLocations); i++)
            ret = FUNC14(CRYPT_knownLocations[i], from, TRUE);
        FUNC13(from, store);
    }
    FUNC7(from, 0);
}