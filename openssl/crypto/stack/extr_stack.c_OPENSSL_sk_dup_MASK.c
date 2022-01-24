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
struct TYPE_5__ {int num; int num_alloc; int /*<<< orphan*/ * data; } ;
typedef  TYPE_1__ OPENSSL_STACK ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_F_OPENSSL_SK_DUP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

OPENSSL_STACK *FUNC4(const OPENSSL_STACK *sk)
{
    OPENSSL_STACK *ret;

    if ((ret = FUNC1(sizeof(*ret))) == NULL) {
        FUNC0(CRYPTO_F_OPENSSL_SK_DUP, ERR_R_MALLOC_FAILURE);
        return NULL;
    }

    /* direct structure assignment */
    *ret = *sk;

    if (sk->num == 0) {
        /* postpone |ret->data| allocation */
        ret->data = NULL;
        ret->num_alloc = 0;
        return ret;
    }
    /* duplicate |sk->data| content */
    if ((ret->data = FUNC1(sizeof(*ret->data) * sk->num_alloc)) == NULL)
        goto err;
    FUNC3(ret->data, sk->data, sizeof(void *) * sk->num);
    return ret;
 err:
    FUNC2(ret);
    return NULL;
}