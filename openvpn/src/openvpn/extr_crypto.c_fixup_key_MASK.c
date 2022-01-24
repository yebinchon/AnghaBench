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
struct key_type {int /*<<< orphan*/  cipher_length; scalar_t__ cipher; } ;
struct key {int /*<<< orphan*/  cipher; } ;
struct gc_arena {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_CRYPTO_DEBUG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gc_arena*) ; 
 int /*<<< orphan*/  FUNC3 (struct gc_arena*) ; 
 struct gc_arena FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int const) ; 
 int FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC8(struct key *key, const struct key_type *kt)
{
    struct gc_arena gc = FUNC4();
    if (kt->cipher)
    {
#ifdef ENABLE_DEBUG
        const struct key orig = *key;
#endif
        const int ndc = FUNC6(kt->cipher);

        if (ndc)
        {
            FUNC5(key->cipher, kt->cipher_length, ndc);
        }

#ifdef ENABLE_DEBUG
        if (check_debug_level(D_CRYPTO_DEBUG))
        {
            if (memcmp(orig.cipher, key->cipher, kt->cipher_length))
            {
                dmsg(D_CRYPTO_DEBUG, "CRYPTO INFO: fixup_key: before=%s after=%s",
                     format_hex(orig.cipher, kt->cipher_length, 0, &gc),
                     format_hex(key->cipher, kt->cipher_length, 0, &gc));
            }
        }
#endif
    }
    FUNC3(&gc);
}