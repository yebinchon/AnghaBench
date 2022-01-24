#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct chmUnitInfo {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_10__ {int ref; TYPE_2__* stg; struct chmUnitInfo ui; scalar_t__ addr; TYPE_1__ IStream_iface; } ;
struct TYPE_9__ {int /*<<< orphan*/  IStorage_iface; } ;
typedef  TYPE_2__ ITSS_IStorageImpl ;
typedef  TYPE_3__ IStream_Impl ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ITSS_IStream_vtbl ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,TYPE_3__*) ; 

__attribute__((used)) static IStream_Impl *FUNC5(
           ITSS_IStorageImpl *stg, struct chmUnitInfo *ui )
{
    IStream_Impl *stm;

    stm = FUNC1( FUNC0(), 0, sizeof (IStream_Impl) );
    stm->IStream_iface.lpVtbl = &ITSS_IStream_vtbl;
    stm->ref = 1;
    stm->addr = 0;
    stm->ui = *ui;
    stm->stg = stg;
    FUNC2( &stg->IStorage_iface );

    FUNC3();

    FUNC4(" -> %p\n", stm );

    return stm;
}