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
typedef  int /*<<< orphan*/  SSL_SESSION ;
typedef  int /*<<< orphan*/  SSL_CIPHER ;
typedef  int /*<<< orphan*/  SSL ;
typedef  int /*<<< orphan*/  EVP_MD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*) ; 
 unsigned char* FUNC2 (int /*<<< orphan*/ ,long*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  const* FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned char*,long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TLS1_3_VERSION ; 
 int /*<<< orphan*/  bio_err ; 
 scalar_t__ psk_identity ; 
 int /*<<< orphan*/  psk_key ; 
 int /*<<< orphan*/ * psksess ; 
 size_t FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  tls13_aes128gcmsha256_id ; 

__attribute__((used)) static int FUNC13(SSL *s, const EVP_MD *md,
                              const unsigned char **id, size_t *idlen,
                              SSL_SESSION **sess)
{
    SSL_SESSION *usesess = NULL;
    const SSL_CIPHER *cipher = NULL;

    if (psksess != NULL) {
        FUNC11(psksess);
        usesess = psksess;
    } else {
        long key_len;
        unsigned char *key = FUNC2(psk_key, &key_len);

        if (key == NULL) {
            FUNC0(bio_err, "Could not convert PSK key '%s' to buffer\n",
                       psk_key);
            return 0;
        }

        /* We default to SHA-256 */
        cipher = FUNC3(s, tls13_aes128gcmsha256_id);
        if (cipher == NULL) {
            FUNC0(bio_err, "Error finding suitable ciphersuite\n");
            FUNC1(key);
            return 0;
        }

        usesess = FUNC7();
        if (usesess == NULL
                || !FUNC8(usesess, key, key_len)
                || !FUNC9(usesess, cipher)
                || !FUNC10(usesess, TLS1_3_VERSION)) {
            FUNC1(key);
            goto err;
        }
        FUNC1(key);
    }

    cipher = FUNC6(usesess);
    if (cipher == NULL)
        goto err;

    if (md != NULL && FUNC4(cipher) != md) {
        /* PSK not usable, ignore it */
        *id = NULL;
        *idlen = 0;
        *sess = NULL;
        FUNC5(usesess);
    } else {
        *sess = usesess;
        *id = (unsigned char *)psk_identity;
        *idlen = FUNC12(psk_identity);
    }

    return 1;

 err:
    FUNC5(usesess);
    return 0;
}