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
typedef  scalar_t__ uint32_t ;
struct TYPE_5__ {int /*<<< orphan*/  (* decode ) (int /*<<< orphan*/ *,TYPE_3__*) ;} ;
typedef  TYPE_1__ op_table_entry ;
struct TYPE_6__ {unsigned char* tag; scalar_t__ status; scalar_t__ resarray_count; TYPE_3__* resarray; int /*<<< orphan*/  tag_len; } ;
typedef  TYPE_2__ nfs41_compound_res ;
typedef  int /*<<< orphan*/  caddr_t ;
typedef  int /*<<< orphan*/  bool_t ;
typedef  int /*<<< orphan*/  XDR ;
struct TYPE_7__ {scalar_t__ op; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ NFS4_OK ; 
 int /*<<< orphan*/  NFS4_OPAQUE_LIMIT ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 TYPE_1__* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char**,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__*) ; 

bool_t FUNC6(
    XDR *xdr,
    caddr_t *pres)
{
    nfs41_compound_res *res = (nfs41_compound_res*)pres;
    uint32_t i, expected_count, expected_op;
    const op_table_entry *entry;
    unsigned char *tag = res->tag;

    if (!FUNC5(xdr, &res->status))
        return FALSE;

    if (!FUNC4(xdr, (char **)&tag, &res->tag_len, NFS4_OPAQUE_LIMIT))
        return FALSE;

    expected_count = res->resarray_count;
    if (!FUNC5(xdr, &res->resarray_count))
        return FALSE;

    /* validate the number of operations against what we sent */
    if (res->resarray_count > expected_count) {
        FUNC0("reply with %u operations, only sent %u!\n",
            res->resarray_count, expected_count);
        return FALSE;
    } else if (res->resarray_count < expected_count &&
        res->status == NFS4_OK) {
        /* illegal for a server to reply with less operations,
         * unless one of them fails */
        FUNC0("successful reply with only %u operations, sent %u!\n",
            res->resarray_count, expected_count);
        return FALSE;
    }

    for (i = 0; i < res->resarray_count; i++)
    {
        expected_op = res->resarray[i].op;
        if (!FUNC5(xdr, &res->resarray[i].op))
            return FALSE;

        /* validate each operation number against what we sent */
        if (res->resarray[i].op != expected_op) {
            FUNC0("reply with %s in operation %u, expected %s!\n",
                FUNC1(res->resarray[i].op), i+1,
                FUNC1(expected_op));
            return FALSE;
        }

        entry = FUNC2(res->resarray[i].op);
        if (entry == NULL || entry->decode == NULL)
            return FALSE;
        if (!entry->decode(xdr, &res->resarray[i]))
            return FALSE;
    }
    return TRUE;
}