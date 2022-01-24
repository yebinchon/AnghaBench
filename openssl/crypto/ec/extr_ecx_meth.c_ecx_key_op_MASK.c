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
typedef  scalar_t__ ecx_key_op_t ;
typedef  int /*<<< orphan*/  X509_ALGOR ;
struct TYPE_5__ {unsigned char* pubkey; unsigned char* privkey; } ;
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  TYPE_1__ ECX_KEY ;

/* Variables and functions */
 int /*<<< orphan*/  EC_F_ECX_KEY_OP ; 
 int /*<<< orphan*/  EC_R_INVALID_ENCODING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char*,unsigned char*) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
#define  EVP_PKEY_ED25519 131 
#define  EVP_PKEY_ED448 130 
#define  EVP_PKEY_X25519 129 
#define  EVP_PKEY_X448 128 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,TYPE_1__*) ; 
 int FUNC4 (int) ; 
 scalar_t__ KEY_OP_KEYGEN ; 
 scalar_t__ KEY_OP_PUBLIC ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*) ; 
 unsigned char* FUNC7 (int) ; 
 TYPE_1__* FUNC8 (int) ; 
 scalar_t__ FUNC9 (unsigned char*,int) ; 
 int V_ASN1_UNDEF ; 
 int X25519_KEYLEN ; 
 int /*<<< orphan*/  FUNC10 (unsigned char*,unsigned char*) ; 
 int X448_KEYLEN ; 
 int /*<<< orphan*/  FUNC11 (unsigned char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC13 (unsigned char*,unsigned char const*,int) ; 

__attribute__((used)) static int FUNC14(EVP_PKEY *pkey, int id, const X509_ALGOR *palg,
                      const unsigned char *p, int plen, ecx_key_op_t op)
{
    ECX_KEY *key = NULL;
    unsigned char *privkey, *pubkey;

    if (op != KEY_OP_KEYGEN) {
        if (palg != NULL) {
            int ptype;

            /* Algorithm parameters must be absent */
            FUNC12(NULL, &ptype, NULL, palg);
            if (ptype != V_ASN1_UNDEF) {
                FUNC0(EC_F_ECX_KEY_OP, EC_R_INVALID_ENCODING);
                return 0;
            }
        }

        if (p == NULL || plen != FUNC4(id)) {
            FUNC0(EC_F_ECX_KEY_OP, EC_R_INVALID_ENCODING);
            return 0;
        }
    }

    key = FUNC8(sizeof(*key));
    if (key == NULL) {
        FUNC0(EC_F_ECX_KEY_OP, ERR_R_MALLOC_FAILURE);
        return 0;
    }
    pubkey = key->pubkey;

    if (op == KEY_OP_PUBLIC) {
        FUNC13(pubkey, p, plen);
    } else {
        privkey = key->privkey = FUNC7(FUNC4(id));
        if (privkey == NULL) {
            FUNC0(EC_F_ECX_KEY_OP, ERR_R_MALLOC_FAILURE);
            goto err;
        }
        if (op == KEY_OP_KEYGEN) {
            if (FUNC9(privkey, FUNC4(id)) <= 0) {
                FUNC6(privkey);
                key->privkey = NULL;
                goto err;
            }
            if (id == EVP_PKEY_X25519) {
                privkey[0] &= 248;
                privkey[X25519_KEYLEN - 1] &= 127;
                privkey[X25519_KEYLEN - 1] |= 64;
            } else if (id == EVP_PKEY_X448) {
                privkey[0] &= 252;
                privkey[X448_KEYLEN - 1] |= 128;
            }
        } else {
            FUNC13(privkey, p, FUNC4(id));
        }
        switch (id) {
        case EVP_PKEY_X25519:
            FUNC10(pubkey, privkey);
            break;
        case EVP_PKEY_ED25519:
            FUNC1(pubkey, privkey);
            break;
        case EVP_PKEY_X448:
            FUNC11(pubkey, privkey);
            break;
        case EVP_PKEY_ED448:
            /*
             * TODO(3.0): We set the library context to NULL for now. This will
             * need to change.
             */
            FUNC2(NULL, pubkey, privkey);
            break;
        }
    }

    FUNC3(pkey, id, key);
    return 1;
 err:
    FUNC5(key);
    return 0;
}