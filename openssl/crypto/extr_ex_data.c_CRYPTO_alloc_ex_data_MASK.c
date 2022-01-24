#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  ctx; } ;
struct TYPE_13__ {int /*<<< orphan*/  argp; int /*<<< orphan*/  argl; int /*<<< orphan*/  (* new_func ) (void*,int /*<<< orphan*/ *,TYPE_4__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_12__ {int /*<<< orphan*/  meth; } ;
struct TYPE_11__ {int /*<<< orphan*/  ex_data_lock; } ;
typedef  TYPE_1__ OSSL_EX_DATA_GLOBAL ;
typedef  TYPE_2__ EX_CALLBACKS ;
typedef  TYPE_3__ EX_CALLBACK ;
typedef  TYPE_4__ CRYPTO_EX_DATA ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (TYPE_4__*,int) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ *,TYPE_4__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC6(int class_index, void *obj, CRYPTO_EX_DATA *ad,
                         int idx)
{
    EX_CALLBACK *f;
    EX_CALLBACKS *ip;
    void *curval;
    OSSL_EX_DATA_GLOBAL *global = FUNC3(ad->ctx);

    if (global == NULL)
        return 0;

    curval = FUNC1(ad, idx);

    /* Already there, no need to allocate */
    if (curval != NULL)
        return 1;

    ip = FUNC2(ad->ctx, class_index);
    if (ip == NULL)
        return 0;
    f = FUNC4(ip->meth, idx);
    FUNC0(global->ex_data_lock);

    /*
     * This should end up calling CRYPTO_set_ex_data(), which allocates
     * everything necessary to support placing the new data in the right spot.
     */
    if (f->new_func == NULL)
        return 0;

    f->new_func(obj, NULL, ad, idx, f->argl, f->argp);

    return 1;
}