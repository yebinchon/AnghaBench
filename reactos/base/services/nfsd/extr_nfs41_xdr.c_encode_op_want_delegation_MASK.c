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
struct TYPE_7__ {scalar_t__ want; TYPE_1__* claim; } ;
typedef  TYPE_3__ nfs41_want_delegation_args ;
typedef  int bool_t ;
typedef  int /*<<< orphan*/  XDR ;
struct TYPE_5__ {scalar_t__ claim; scalar_t__ prev_delegate_type; } ;

/* Variables and functions */
 scalar_t__ CLAIM_PREVIOUS ; 
 int FALSE ; 
 int /*<<< orphan*/  OP_WANT_DELEGATION ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,scalar_t__*) ; 

__attribute__((used)) static bool_t FUNC2(
    XDR *xdr,
    nfs_argop4 *argop)
{
    nfs41_want_delegation_args *args = (nfs41_want_delegation_args*)argop->arg;

    if (FUNC0(argop->op, OP_WANT_DELEGATION))
        return FALSE;

    if (!FUNC1(xdr, &args->want))
        return FALSE;

    if (!FUNC1(xdr, &args->claim->claim))
        return FALSE;

    return args->claim->claim != CLAIM_PREVIOUS ||
        FUNC1(xdr, &args->claim->prev_delegate_type);
}