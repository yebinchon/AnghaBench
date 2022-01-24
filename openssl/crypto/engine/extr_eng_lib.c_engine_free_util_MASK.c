#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int struct_ref; int /*<<< orphan*/  ex_data; int /*<<< orphan*/  (* destroy ) (TYPE_1__*) ;} ;
typedef  TYPE_1__ ENGINE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CRYPTO_EX_INDEX_ENGINE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  global_engine_lock ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

int FUNC8(ENGINE *e, int not_locked)
{
    int i;

    if (e == NULL)
        return 1;
    if (not_locked)
        FUNC0(&e->struct_ref, &i, global_engine_lock);
    else
        i = --e->struct_ref;
    FUNC6(e, 0, -1);
    if (i > 0)
        return 1;
    FUNC3(i < 0);
    /* Free up any dynamically allocated public key methods */
    FUNC5(e);
    FUNC4(e);
    /*
     * Give the ENGINE a chance to do any structural cleanup corresponding to
     * allocation it did in its constructor (eg. unload error strings)
     */
    if (e->destroy)
        e->destroy(e);
    FUNC1(CRYPTO_EX_INDEX_ENGINE, e, &e->ex_data);
    FUNC2(e);
    return 1;
}