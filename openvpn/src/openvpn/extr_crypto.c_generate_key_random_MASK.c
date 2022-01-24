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
struct key_type {int cipher_length; int hmac_length; scalar_t__ digest; scalar_t__ cipher; } ;
struct key {int /*<<< orphan*/  hmac; int /*<<< orphan*/  cipher; } ;
struct gc_arena {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct key) ; 
 int /*<<< orphan*/  D_SHOW_KEY_SOURCE ; 
 int MAX_CIPHER_KEY_LENGTH ; 
 int MAX_HMAC_KEY_LENGTH ; 
 int /*<<< orphan*/  M_FATAL ; 
 int /*<<< orphan*/  FUNC1 (struct key*,struct key_type const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct key*,struct key_type const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct gc_arena*) ; 
 int /*<<< orphan*/  FUNC5 (struct gc_arena*) ; 
 struct gc_arena FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 

void
FUNC9(struct key *key, const struct key_type *kt)
{
    int cipher_len = MAX_CIPHER_KEY_LENGTH;
    int hmac_len = MAX_HMAC_KEY_LENGTH;

    struct gc_arena gc = FUNC6();

    do
    {
        FUNC0(*key);
        if (kt)
        {
            if (kt->cipher && kt->cipher_length > 0 && kt->cipher_length <= cipher_len)
            {
                cipher_len = kt->cipher_length;
            }

            if (kt->digest && kt->hmac_length > 0 && kt->hmac_length <= hmac_len)
            {
                hmac_len = kt->hmac_length;
            }
        }
        if (!FUNC8(key->cipher, cipher_len)
            || !FUNC8(key->hmac, hmac_len))
        {
            FUNC7(M_FATAL, "ERROR: Random number generator cannot obtain entropy for key generation");
        }

        FUNC2(D_SHOW_KEY_SOURCE, "Cipher source entropy: %s", FUNC4(key->cipher, cipher_len, 0, &gc));
        FUNC2(D_SHOW_KEY_SOURCE, "HMAC source entropy: %s", FUNC4(key->hmac, hmac_len, 0, &gc));

        if (kt)
        {
            FUNC3(key, kt);
        }
    } while (kt && !FUNC1(key, kt));

    FUNC5(&gc);
}