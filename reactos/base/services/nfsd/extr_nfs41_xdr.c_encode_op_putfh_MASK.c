#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  op; scalar_t__ arg; } ;
typedef  TYPE_2__ nfs_argop4 ;
struct TYPE_7__ {TYPE_1__* file; } ;
typedef  TYPE_3__ nfs41_putfh_args ;
typedef  int /*<<< orphan*/  bool_t ;
typedef  int /*<<< orphan*/  XDR ;
struct TYPE_5__ {int /*<<< orphan*/  fh; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  OP_PUTFH ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool_t FUNC2(
    XDR *xdr,
    nfs_argop4 *argop)
{
    nfs41_putfh_args *args = (nfs41_putfh_args*)argop->arg;

    if (FUNC0(argop->op, OP_PUTFH))
        return FALSE;

    return FUNC1(xdr, &args->file->fh);
}