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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  label_prefix ;
typedef  int /*<<< orphan*/  hkdflabel ;
typedef  int /*<<< orphan*/  WPACKET ;
typedef  int /*<<< orphan*/  SSL ;
typedef  int /*<<< orphan*/  OSSL_PARAM ;
typedef  int /*<<< orphan*/  EVP_MD ;
typedef  int /*<<< orphan*/  EVP_KDF_CTX ;
typedef  int /*<<< orphan*/  EVP_KDF ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_INTERNAL_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,unsigned char*,size_t) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int EVP_MAX_MD_SIZE ; 
 char* FUNC6 (int /*<<< orphan*/  const*) ; 
 size_t FUNC7 (int /*<<< orphan*/  const*) ; 
 int EVP_PKEY_HKDEF_MODE_EXPAND_ONLY ; 
 int /*<<< orphan*/  OSSL_KDF_NAME_HKDF ; 
 int /*<<< orphan*/  OSSL_KDF_PARAM_DIGEST ; 
 int /*<<< orphan*/  OSSL_KDF_PARAM_INFO ; 
 int /*<<< orphan*/  OSSL_KDF_PARAM_KEY ; 
 int /*<<< orphan*/  OSSL_KDF_PARAM_MODE ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int*) ; 
 void* FUNC10 (int /*<<< orphan*/ ,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  SSL_AD_INTERNAL_ERROR ; 
 int /*<<< orphan*/  SSL_F_TLS13_HKDF_EXPAND ; 
 int /*<<< orphan*/  SSL_R_TLS_ILLEGAL_EXPORTER_LABEL ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int TLS13_MAX_LABEL_LEN ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,unsigned char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,unsigned char const*,size_t) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,unsigned char const*,size_t) ; 
 scalar_t__ FUNC23 (char const*) ; 

int FUNC24(SSL *s, const EVP_MD *md, const unsigned char *secret,
                             const unsigned char *label, size_t labellen,
                             const unsigned char *data, size_t datalen,
                             unsigned char *out, size_t outlen, int fatal)
{
#ifdef CHARSET_EBCDIC
    static const unsigned char label_prefix[] = { 0x74, 0x6C, 0x73, 0x31, 0x33, 0x20, 0x00 };
#else
    static const unsigned char label_prefix[] = "tls13 ";
#endif
    EVP_KDF *kdf = FUNC4(NULL, OSSL_KDF_NAME_HKDF, NULL);
    EVP_KDF_CTX *kctx;
    OSSL_PARAM params[5], *p = params;
    int mode = EVP_PKEY_HKDEF_MODE_EXPAND_ONLY;
    const char *mdname = FUNC6(md);
    int ret;
    size_t hkdflabellen;
    size_t hashlen;
    /*
     * 2 bytes for length of derived secret + 1 byte for length of combined
     * prefix and label + bytes for the label itself + 1 byte length of hash
     * + bytes for the hash itself
     */
    unsigned char hkdflabel[sizeof(uint16_t) + sizeof(uint8_t) +
                            + (sizeof(label_prefix) - 1) + TLS13_MAX_LABEL_LEN
                            + 1 + EVP_MAX_MD_SIZE];
    WPACKET pkt;

    kctx = FUNC1(kdf);
    FUNC5(kdf);
    if (kctx == NULL)
        return 0;

    if (labellen > TLS13_MAX_LABEL_LEN) {
        if (fatal) {
            FUNC13(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS13_HKDF_EXPAND,
                     ERR_R_INTERNAL_ERROR);
        } else {
            /*
             * Probably we have been called from SSL_export_keying_material(),
             * or SSL_export_keying_material_early().
             */
            FUNC12(SSL_F_TLS13_HKDF_EXPAND, SSL_R_TLS_ILLEGAL_EXPORTER_LABEL);
        }
        FUNC0(kctx);
        return 0;
    }

    hashlen = FUNC7(md);

    if (!FUNC18(&pkt, hkdflabel, sizeof(hkdflabel), 0)
            || !FUNC20(&pkt, outlen)
            || !FUNC21(&pkt)
            || !FUNC19(&pkt, label_prefix, sizeof(label_prefix) - 1)
            || !FUNC19(&pkt, label, labellen)
            || !FUNC15(&pkt)
            || !FUNC22(&pkt, data, (data == NULL) ? 0 : datalen)
            || !FUNC17(&pkt, &hkdflabellen)
            || !FUNC16(&pkt)) {
        FUNC0(kctx);
        FUNC14(&pkt);
        if (fatal)
            FUNC13(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS13_HKDF_EXPAND,
                     ERR_R_INTERNAL_ERROR);
        else
            FUNC12(SSL_F_TLS13_HKDF_EXPAND, ERR_R_INTERNAL_ERROR);
        return 0;
    }

    *p++ = FUNC9(OSSL_KDF_PARAM_MODE, &mode);
    *p++ = FUNC11(OSSL_KDF_PARAM_DIGEST,
                                            (char *)mdname, FUNC23(mdname) + 1);
    *p++ = FUNC10(OSSL_KDF_PARAM_KEY,
                                             (unsigned char *)secret, hashlen);
    *p++ = FUNC10(OSSL_KDF_PARAM_INFO,
                                             hkdflabel, hkdflabellen);
    *p++ = FUNC8();

    ret = FUNC2(kctx, params) <= 0
        || FUNC3(kctx, out, outlen) <= 0;

    FUNC0(kctx);

    if (ret != 0) {
        if (fatal)
            FUNC13(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS13_HKDF_EXPAND,
                     ERR_R_INTERNAL_ERROR);
        else
            FUNC12(SSL_F_TLS13_HKDF_EXPAND, ERR_R_INTERNAL_ERROR);
    }

    return ret == 0;
}