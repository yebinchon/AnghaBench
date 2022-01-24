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
struct TYPE_7__ {scalar_t__ num; int num_alloc; int /*<<< orphan*/ ** data; } ;
typedef  int /*<<< orphan*/  (* OPENSSL_sk_freefunc ) (void*) ;
typedef  int /*<<< orphan*/ * (* OPENSSL_sk_copyfunc ) (int /*<<< orphan*/ *) ;
typedef  TYPE_1__ OPENSSL_STACK ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_F_OPENSSL_SK_DEEP_COPY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/ ** FUNC4 (int) ; 
 scalar_t__ min_nodes ; 

OPENSSL_STACK *FUNC5(const OPENSSL_STACK *sk,
                             OPENSSL_sk_copyfunc copy_func,
                             OPENSSL_sk_freefunc free_func)
{
    OPENSSL_STACK *ret;
    int i;

    if ((ret = FUNC2(sizeof(*ret))) == NULL) {
        FUNC0(CRYPTO_F_OPENSSL_SK_DEEP_COPY, ERR_R_MALLOC_FAILURE);
        return NULL;
    }

    /* direct structure assignment */
    *ret = *sk;

    if (sk->num == 0) {
        /* postpone |ret| data allocation */
        ret->data = NULL;
        ret->num_alloc = 0;
        return ret;
    }

    ret->num_alloc = sk->num > min_nodes ? sk->num : min_nodes;
    ret->data = FUNC4(sizeof(*ret->data) * ret->num_alloc);
    if (ret->data == NULL) {
        FUNC1(ret);
        return NULL;
    }

    for (i = 0; i < ret->num; ++i) {
        if (sk->data[i] == NULL)
            continue;
        if ((ret->data[i] = copy_func(sk->data[i])) == NULL) {
            while (--i >= 0)
                if (ret->data[i] != NULL)
                    free_func((void *)ret->data[i]);
            FUNC3(ret);
            return NULL;
        }
    }
    return ret;
}