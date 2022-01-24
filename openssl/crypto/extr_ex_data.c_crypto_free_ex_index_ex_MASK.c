#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  free_func; int /*<<< orphan*/  dup_func; int /*<<< orphan*/  new_func; } ;
struct TYPE_8__ {int /*<<< orphan*/  meth; } ;
struct TYPE_7__ {int /*<<< orphan*/  ex_data_lock; } ;
typedef  TYPE_1__ OSSL_EX_DATA_GLOBAL ;
typedef  int /*<<< orphan*/  OPENSSL_CTX ;
typedef  TYPE_2__ EX_CALLBACKS ;
typedef  TYPE_3__ EX_CALLBACK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dummy_dup ; 
 int /*<<< orphan*/  dummy_free ; 
 int /*<<< orphan*/  dummy_new ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *,int) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ ,int) ; 

int FUNC5(OPENSSL_CTX *ctx, int class_index, int idx)
{
    EX_CALLBACKS *ip = FUNC1(ctx, class_index);
    EX_CALLBACK *a;
    int toret = 0;
    OSSL_EX_DATA_GLOBAL *global = FUNC2(ctx);

    if (global == NULL)
        return 0;

    ip = FUNC1(ctx, class_index);
    if (ip == NULL)
        return 0;
    if (idx < 0 || idx >= FUNC3(ip->meth))
        goto err;
    a = FUNC4(ip->meth, idx);
    if (a == NULL)
        goto err;
    a->new_func = dummy_new;
    a->dup_func = dummy_dup;
    a->free_func = dummy_free;
    toret = 1;
err:
    FUNC0(global->ex_data_lock);
    return toret;
}