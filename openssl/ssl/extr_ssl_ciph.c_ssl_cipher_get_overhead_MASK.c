#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int algorithm_enc; int algorithm_mac; } ;
typedef  TYPE_1__ SSL_CIPHER ;
typedef  int /*<<< orphan*/  EVP_MD ;
typedef  int /*<<< orphan*/  EVP_CIPHER ;

/* Variables and functions */
 int EVP_CCM_TLS_EXPLICIT_IV_LEN ; 
 size_t FUNC0 (int /*<<< orphan*/  const*) ; 
 size_t FUNC1 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*) ; 
 scalar_t__ EVP_CIPH_CBC_MODE ; 
 size_t EVP_GCM_TLS_EXPLICIT_IV_LEN ; 
 size_t EVP_GCM_TLS_TAG_LEN ; 
 size_t FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC4 (int) ; 
 int /*<<< orphan*/ * FUNC5 (int) ; 
 int SSL_AEAD ; 
 int SSL_AES128CCM ; 
 int SSL_AES128CCM8 ; 
 int SSL_AES256CCM ; 
 int SSL_AES256CCM8 ; 
 int SSL_AESGCM ; 
 int SSL_ARIAGCM ; 
 int SSL_CHACHA20POLY1305 ; 
 int FUNC6 (TYPE_1__ const*) ; 
 int FUNC7 (TYPE_1__ const*) ; 
 int SSL_eNULL ; 

int FUNC8(const SSL_CIPHER *c, size_t *mac_overhead,
                            size_t *int_overhead, size_t *blocksize,
                            size_t *ext_overhead)
{
    size_t mac = 0, in = 0, blk = 0, out = 0;

    /* Some hard-coded numbers for the CCM/Poly1305 MAC overhead
     * because there are no handy #defines for those. */
    if (c->algorithm_enc & (SSL_AESGCM | SSL_ARIAGCM)) {
        out = EVP_GCM_TLS_EXPLICIT_IV_LEN + EVP_GCM_TLS_TAG_LEN;
    } else if (c->algorithm_enc & (SSL_AES128CCM | SSL_AES256CCM)) {
        out = EVP_CCM_TLS_EXPLICIT_IV_LEN + 16;
    } else if (c->algorithm_enc & (SSL_AES128CCM8 | SSL_AES256CCM8)) {
        out = EVP_CCM_TLS_EXPLICIT_IV_LEN + 8;
    } else if (c->algorithm_enc & SSL_CHACHA20POLY1305) {
        out = 16;
    } else if (c->algorithm_mac & SSL_AEAD) {
        /* We're supposed to have handled all the AEAD modes above */
        return 0;
    } else {
        /* Non-AEAD modes. Calculate MAC/cipher overhead separately */
        int digest_nid = FUNC7(c);
        const EVP_MD *e_md = FUNC5(digest_nid);

        if (e_md == NULL)
            return 0;

        mac = FUNC3(e_md);
        if (c->algorithm_enc != SSL_eNULL) {
            int cipher_nid = FUNC6(c);
            const EVP_CIPHER *e_ciph = FUNC4(cipher_nid);

            /* If it wasn't AEAD or SSL_eNULL, we expect it to be a
               known CBC cipher. */
            if (e_ciph == NULL ||
                FUNC2(e_ciph) != EVP_CIPH_CBC_MODE)
                return 0;

            in = 1; /* padding length byte */
            out = FUNC1(e_ciph);
            blk = FUNC0(e_ciph);
        }
    }

    *mac_overhead = mac;
    *int_overhead = in;
    *blocksize = blk;
    *ext_overhead = out;

    return 1;
}