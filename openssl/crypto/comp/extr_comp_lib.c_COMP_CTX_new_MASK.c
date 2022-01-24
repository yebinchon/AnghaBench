#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_1__* meth; } ;
struct TYPE_8__ {int /*<<< orphan*/  (* init ) (TYPE_2__*) ;} ;
typedef  TYPE_1__ COMP_METHOD ;
typedef  TYPE_2__ COMP_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  COMP_F_COMP_CTX_NEW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 TYPE_2__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

COMP_CTX *FUNC4(COMP_METHOD *meth)
{
    COMP_CTX *ret;

    if ((ret = FUNC2(sizeof(*ret))) == NULL) {
        FUNC0(COMP_F_COMP_CTX_NEW, ERR_R_MALLOC_FAILURE);
        return NULL;
    }
    ret->meth = meth;
    if ((ret->meth->init != NULL) && !ret->meth->init(ret)) {
        FUNC1(ret);
        ret = NULL;
    }
    return ret;
}