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
struct TYPE_3__ {scalar_t__ len; scalar_t__ fh; } ;
typedef  TYPE_1__ nfs41_fh ;
typedef  int bool_t ;
typedef  int /*<<< orphan*/  XDR ;

/* Variables and functions */
 scalar_t__ NFS4_FHSIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,scalar_t__*) ; 

__attribute__((used)) static bool_t FUNC2(XDR *xdr, nfs41_fh *fh)
{
    return FUNC1(xdr, &fh->len)
        && fh->len <= NFS4_FHSIZE
        && FUNC0(xdr, (char*)fh->fh, fh->len);
}