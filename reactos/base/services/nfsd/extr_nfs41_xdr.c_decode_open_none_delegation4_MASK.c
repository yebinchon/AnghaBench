#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  open_delegation4 ;
typedef  int enum_t ;
typedef  int /*<<< orphan*/  bool_t ;
typedef  int /*<<< orphan*/  XDR ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
#define  WND4_CONTENTION 129 
#define  WND4_RESOURCE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int*) ; 

__attribute__((used)) static bool_t FUNC2(
    XDR *xdr,
    open_delegation4 *delegation)
{
    enum_t why_no_deleg;
    bool_t will_signal;

    if (!FUNC1(xdr, (enum_t*)&why_no_deleg))
        return FALSE;

    switch (why_no_deleg)
    {
    case WND4_CONTENTION:
    case WND4_RESOURCE:
        return FUNC0(xdr, &will_signal);
    default:
        return TRUE;
    }
}