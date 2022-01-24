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
struct TYPE_3__ {int /*<<< orphan*/  owner; int /*<<< orphan*/  locktype; int /*<<< orphan*/  length; int /*<<< orphan*/  offset; } ;
typedef  TYPE_1__ lock_res_denied ;
typedef  int /*<<< orphan*/  bool_t ;
typedef  int /*<<< orphan*/  XDR ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool_t FUNC3(
    XDR *xdr,
    lock_res_denied *denied)
{
    if (!FUNC1(xdr, &denied->offset))
        return FALSE;

    if (!FUNC1(xdr, &denied->length))
        return FALSE;

    if (!FUNC2(xdr, &denied->locktype))
        return FALSE;

    return FUNC0(xdr, &denied->owner);
}