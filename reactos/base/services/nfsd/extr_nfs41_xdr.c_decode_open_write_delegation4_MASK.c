#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_3__ {int /*<<< orphan*/  permissions; int /*<<< orphan*/  recalled; int /*<<< orphan*/  stateid; } ;
typedef  TYPE_1__ open_delegation4 ;
typedef  int /*<<< orphan*/  bool_t ;
typedef  int /*<<< orphan*/  XDR ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool_t FUNC4(
    XDR *xdr,
    open_delegation4 *delegation)
{
    uint64_t size_limit;

    if (!FUNC3(xdr, &delegation->stateid))
        return FALSE;

    if (!FUNC1(xdr, &delegation->recalled))
        return FALSE;

    if (!FUNC0(xdr, &size_limit))
        return FALSE;

    return FUNC2(xdr, &delegation->permissions);
}