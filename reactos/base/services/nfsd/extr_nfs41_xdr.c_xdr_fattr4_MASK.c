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
struct TYPE_3__ {unsigned char* attr_vals; int /*<<< orphan*/  attr_vals_len; int /*<<< orphan*/  attrmask; } ;
typedef  TYPE_1__ fattr4 ;
typedef  int /*<<< orphan*/  bool_t ;
typedef  int /*<<< orphan*/  XDR ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  NFS4_OPAQUE_LIMIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char**,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

bool_t FUNC2(
    XDR *xdr,
    fattr4 *fattr)
{
    unsigned char *attr_vals = fattr->attr_vals;

    if (!FUNC0(xdr, &fattr->attrmask))
        return FALSE;

    return FUNC1(xdr, (char **)&attr_vals, &fattr->attr_vals_len, NFS4_OPAQUE_LIMIT);
}