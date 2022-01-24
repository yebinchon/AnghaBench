#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_7__ {int ref; int /*<<< orphan*/ * current; int /*<<< orphan*/ * last; int /*<<< orphan*/ * first; TYPE_1__ IEnumSTATSTG_iface; } ;
typedef  TYPE_2__ IEnumSTATSTG_Impl ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  IEnumSTATSTG_vtbl ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,TYPE_2__*) ; 

__attribute__((used)) static IEnumSTATSTG_Impl *FUNC4( void )
{
    IEnumSTATSTG_Impl *stgenum;

    stgenum = FUNC1( FUNC0(), 0, sizeof (IEnumSTATSTG_Impl) );
    stgenum->IEnumSTATSTG_iface.lpVtbl = &IEnumSTATSTG_vtbl;
    stgenum->ref = 1;
    stgenum->first = NULL;
    stgenum->last = NULL;
    stgenum->current = NULL;

    FUNC2();
    FUNC3(" -> %p\n", stgenum );

    return stgenum;
}