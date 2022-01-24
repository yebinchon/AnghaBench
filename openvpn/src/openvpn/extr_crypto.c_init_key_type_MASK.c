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
struct key_type {int cipher_length; scalar_t__ hmac_length; int /*<<< orphan*/  digest; int /*<<< orphan*/  cipher; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct key_type) ; 
 int MAX_CIPHER_KEY_LENGTH ; 
 int /*<<< orphan*/  M_FATAL ; 
 int /*<<< orphan*/  M_WARN ; 
 scalar_t__ OPENVPN_MAX_CIPHER_BLOCK_SIZE ; 
 scalar_t__ OPENVPN_MAX_HMAC_SIZE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char const*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC11 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC12 (char const*) ; 

void
FUNC13(struct key_type *kt, const char *ciphername,
              const char *authname, int keysize, bool tls_mode, bool warn)
{
    bool aead_cipher = false;

    FUNC0(ciphername);
    FUNC0(authname);

    FUNC1(*kt);
    if (FUNC11(ciphername, "none") != 0)
    {
        kt->cipher = FUNC3(FUNC12(ciphername));
        if (!kt->cipher)
        {
            FUNC10(M_FATAL, "Cipher %s not supported", ciphername);
        }

        kt->cipher_length = FUNC4(kt->cipher);
        if (keysize > 0 && keysize <= MAX_CIPHER_KEY_LENGTH)
        {
            kt->cipher_length = keysize;
        }

        /* check legal cipher mode */
        aead_cipher = FUNC5(kt->cipher);
        if (!(FUNC6(kt->cipher)
              || (tls_mode && aead_cipher)
#ifdef ENABLE_OFB_CFB_MODE
              || (tls_mode && cipher_kt_mode_ofb_cfb(kt->cipher))
#endif
              ))
        {
            FUNC10(M_FATAL, "Cipher '%s' mode not supported", ciphername);
        }

        if (OPENVPN_MAX_CIPHER_BLOCK_SIZE < FUNC2(kt->cipher))
        {
            FUNC10(M_FATAL, "Cipher '%s' not allowed: block size too big.", ciphername);
        }
    }
    else
    {
        if (warn)
        {
            FUNC10(M_WARN, "******* WARNING *******: '--cipher none' was specified. "
                "This means NO encryption will be performed and tunnelled "
                "data WILL be transmitted in clear text over the network! "
                "PLEASE DO RECONSIDER THIS SETTING!");
        }
    }
    if (FUNC11(authname, "none") != 0)
    {
        if (!aead_cipher) /* Ignore auth for AEAD ciphers */
        {
            kt->digest = FUNC8(authname);
            kt->hmac_length = FUNC9(kt->digest);

            if (OPENVPN_MAX_HMAC_SIZE < kt->hmac_length)
            {
                FUNC10(M_FATAL, "HMAC '%s' not allowed: digest size too big.", authname);
            }
        }
    }
    else if (!aead_cipher)
    {
        if (warn)
        {
            FUNC10(M_WARN, "******* WARNING *******: '--auth none' was specified. "
                "This means no authentication will be performed on received "
                "packets, meaning you CANNOT trust that the data received by "
                "the remote side have NOT been manipulated. "
                "PLEASE DO RECONSIDER THIS SETTING!");
        }
    }
}