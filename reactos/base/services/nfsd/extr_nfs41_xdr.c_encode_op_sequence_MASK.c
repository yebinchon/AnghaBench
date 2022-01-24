#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  op; scalar_t__ arg; } ;
typedef  TYPE_1__ nfs_argop4 ;
struct TYPE_5__ {int /*<<< orphan*/  sa_cachethis; int /*<<< orphan*/  sa_highest_slotid; int /*<<< orphan*/  sa_slotid; int /*<<< orphan*/  sa_sequenceid; scalar_t__ sa_sessionid; } ;
typedef  TYPE_2__ nfs41_sequence_args ;
typedef  int /*<<< orphan*/  bool_t ;
typedef  int /*<<< orphan*/  XDR ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  NFS4_SESSIONID_SIZE ; 
 int /*<<< orphan*/  OP_SEQUENCE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool_t FUNC4(
    XDR *xdr,
    nfs_argop4 *argop)
{
    nfs41_sequence_args *args = (nfs41_sequence_args*)argop->arg;

    if (FUNC0(argop->op, OP_SEQUENCE))
        return FALSE;

    if (!FUNC2(xdr, (char *)args->sa_sessionid, NFS4_SESSIONID_SIZE))
        return FALSE;

    if (!FUNC3(xdr, &args->sa_sequenceid))
        return FALSE;

    if (!FUNC3(xdr, &args->sa_slotid))
        return FALSE;

    if (!FUNC3(xdr, &args->sa_highest_slotid))
        return FALSE;

    return FUNC1(xdr, &args->sa_cachethis);
}