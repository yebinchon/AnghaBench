#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int /*<<< orphan*/ * ctx; int /*<<< orphan*/ * sk; } ;
struct TYPE_16__ {int /*<<< orphan*/  argp; int /*<<< orphan*/  argl; int /*<<< orphan*/  (* free_func ) (void*,void*,TYPE_4__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_15__ {int /*<<< orphan*/  meth; } ;
struct TYPE_14__ {int /*<<< orphan*/  ex_data_lock; } ;
typedef  TYPE_1__ OSSL_EX_DATA_GLOBAL ;
typedef  TYPE_2__ EX_CALLBACKS ;
typedef  TYPE_3__ EX_CALLBACK ;
typedef  TYPE_4__ CRYPTO_EX_DATA ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__**) ; 
 TYPE_3__** FUNC4 (int) ; 
 scalar_t__ FUNC5 (TYPE_3__**) ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ *,int) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (void*,void*,TYPE_4__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC12(int class_index, void *obj, CRYPTO_EX_DATA *ad)
{
    int mx, i;
    EX_CALLBACKS *ip;
    void *ptr;
    EX_CALLBACK *f;
    EX_CALLBACK *stack[10];
    EX_CALLBACK **storage = NULL;
    OSSL_EX_DATA_GLOBAL *global;

    if ((ip = FUNC6(ad->ctx, class_index)) == NULL)
        goto err;
    global = FUNC7(ad->ctx);
    if (global == NULL)
        goto err;

    mx = FUNC8(ip->meth);
    if (mx > 0) {
        if (mx < (int)FUNC5(stack))
            storage = stack;
        else
            storage = FUNC4(sizeof(*storage) * mx);
        if (storage != NULL)
            for (i = 0; i < mx; i++)
                storage[i] = FUNC9(ip->meth, i);
    }
    FUNC0(global->ex_data_lock);

    for (i = 0; i < mx; i++) {
        if (storage != NULL)
            f = storage[i];
        else {
            FUNC1(global->ex_data_lock);
            f = FUNC9(ip->meth, i);
            FUNC0(global->ex_data_lock);
        }
        if (f != NULL && f->free_func != NULL) {
            ptr = FUNC2(ad, i);
            f->free_func(obj, ptr, ad, i, f->argl, f->argp);
        }
    }

    if (storage != stack)
        FUNC3(storage);
 err:
    FUNC10(ad->sk);
    ad->sk = NULL;
    ad->ctx = NULL;
}