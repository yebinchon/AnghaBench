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
typedef  size_t uint32_t ;
typedef  int /*<<< orphan*/  netaddr4 ;
struct TYPE_3__ {size_t count; int /*<<< orphan*/ * arr; } ;
typedef  TYPE_1__ multi_addr4 ;
typedef  int /*<<< orphan*/  bool_t ;
typedef  int /*<<< orphan*/  XDR ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 size_t NFS41_ADDRS_PER_SERVER ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,size_t*) ; 

__attribute__((used)) static bool_t FUNC2(
    XDR *xdr,
    multi_addr4 *list)
{
    netaddr4 dummy, *dest;
    uint32_t i;

    if (!FUNC1(xdr, &list->count))
        return FALSE;

    for (i = 0; i < list->count; i++) {
        /* if there are too many addrs, decode the extras into 'dummy' */
        dest = i < NFS41_ADDRS_PER_SERVER ? &list->arr[i] : &dummy;

        if (!FUNC0(xdr, dest))
            return FALSE;
    }
    return TRUE;
}