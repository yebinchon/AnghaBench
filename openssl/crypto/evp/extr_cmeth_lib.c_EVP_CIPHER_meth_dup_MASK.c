#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/ * lock; int /*<<< orphan*/  key_len; int /*<<< orphan*/  block_size; int /*<<< orphan*/  nid; int /*<<< orphan*/ * prov; } ;
typedef  TYPE_1__ EVP_CIPHER ;
typedef  int /*<<< orphan*/  CRYPTO_RWLOCK ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_1__ const*,int) ; 

EVP_CIPHER *FUNC2(const EVP_CIPHER *cipher)
{
    EVP_CIPHER *to = NULL;

    /*
     * Non-legacy EVP_CIPHERs can't be duplicated like this.
     * Use EVP_CIPHER_up_ref() instead.
     */
    if (cipher->prov != NULL)
        return NULL;

    if ((to = FUNC0(cipher->nid, cipher->block_size,
                                  cipher->key_len)) != NULL) {
        CRYPTO_RWLOCK *lock = to->lock;

        FUNC1(to, cipher, sizeof(*to));
        to->lock = lock;
    }
    return to;
}