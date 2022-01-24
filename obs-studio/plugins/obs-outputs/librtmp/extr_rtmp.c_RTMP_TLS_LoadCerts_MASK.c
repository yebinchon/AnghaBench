#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct mbedtls_x509_crt {int dummy; } ;
typedef  int /*<<< orphan*/  mbedtls_x509_crt ;
struct TYPE_7__ {int /*<<< orphan*/ * cacert; int /*<<< orphan*/  conf; } ;
struct TYPE_6__ {int /*<<< orphan*/  cbCertEncoded; scalar_t__ pbCertEncoded; } ;
typedef  int /*<<< orphan*/  SecKeychainRef ;
typedef  int /*<<< orphan*/  SecCertificateRef ;
typedef  TYPE_1__* PCCERT_CONTEXT ;
typedef  int /*<<< orphan*/  HCRYPTPROV ;
typedef  int /*<<< orphan*/  HCERTSTORE ;
typedef  int /*<<< orphan*/  CFTypeRef ;
typedef  int /*<<< orphan*/  CFMutableDictionaryRef ;
typedef  scalar_t__ CFIndex ;
typedef  int /*<<< orphan*/  CFDataRef ;
typedef  int /*<<< orphan*/  CFArrayRef ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,void const**,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 
 TYPE_2__* RTMP_TLS_ctx ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 (int,int) ; 
 scalar_t__ errSecSuccess ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  kCFBooleanTrue ; 
 int /*<<< orphan*/  kSecClass ; 
 int /*<<< orphan*/  kSecClassCertificate ; 
 int /*<<< orphan*/  kSecMatchLimit ; 
 int /*<<< orphan*/  kSecMatchLimitAll ; 
 int /*<<< orphan*/  kSecMatchSearchList ; 
 int /*<<< orphan*/  kSecReturnRef ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,unsigned char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ *,char*) ; 

void
FUNC22() {
#ifdef USE_MBEDTLS
    mbedtls_x509_crt *chain = RTMP_TLS_ctx->cacert = calloc(1, sizeof(struct mbedtls_x509_crt));
    mbedtls_x509_crt_init(chain);

#if defined(_WIN32)
    HCERTSTORE hCertStore;
    PCCERT_CONTEXT pCertContext = NULL;

    if (!(hCertStore = CertOpenSystemStore((HCRYPTPROV)NULL, L"ROOT"))) {
        goto error;
    }

    while (pCertContext = CertEnumCertificatesInStore(hCertStore, pCertContext)) {
        mbedtls_x509_crt_parse_der(chain,
                                   (unsigned char *)pCertContext->pbCertEncoded,
                                   pCertContext->cbCertEncoded);
    }

    CertFreeCertificateContext(pCertContext);
    CertCloseStore(hCertStore, 0);
#elif defined(__APPLE__)
    SecKeychainRef keychain_ref;
    CFMutableDictionaryRef search_settings_ref;
    CFArrayRef result_ref;

    if (SecKeychainOpen("/System/Library/Keychains/SystemRootCertificates.keychain",
                        &keychain_ref)
        != errSecSuccess) {
      goto error;
    }

    search_settings_ref = CFDictionaryCreateMutable(NULL, 0, NULL, NULL);
    CFDictionarySetValue(search_settings_ref, kSecClass, kSecClassCertificate);
    CFDictionarySetValue(search_settings_ref, kSecMatchLimit, kSecMatchLimitAll);
    CFDictionarySetValue(search_settings_ref, kSecReturnRef, kCFBooleanTrue);
    CFDictionarySetValue(search_settings_ref, kSecMatchSearchList,
                         CFArrayCreate(NULL, (const void **)&keychain_ref, 1, NULL));

    if (SecItemCopyMatching(search_settings_ref, (CFTypeRef *)&result_ref)
        != errSecSuccess) {
      goto error;
    }

    for (CFIndex i = 0; i < CFArrayGetCount(result_ref); i++) {
      SecCertificateRef item_ref = (SecCertificateRef)
                                   CFArrayGetValueAtIndex(result_ref, i);
      CFDataRef data_ref;

      if ((data_ref = SecCertificateCopyData(item_ref))) {
        mbedtls_x509_crt_parse_der(chain,
                                   (unsigned char *)CFDataGetBytePtr(data_ref),
                                   CFDataGetLength(data_ref));
        CFRelease(data_ref);
      }
    }

    CFRelease(keychain_ref);
#elif defined(__linux__)
    if (mbedtls_x509_crt_parse_path(chain, "/etc/ssl/certs/") != 0) {
        goto error;
    }
#endif

    mbedtls_ssl_conf_ca_chain(&RTMP_TLS_ctx->conf, chain, NULL);
    return;

error:
    mbedtls_x509_crt_free(chain);
    free(chain);
    RTMP_TLS_ctx->cacert = NULL;
#endif /* USE_MBEDTLS */
}