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
struct cb_sequence_ref {int /*<<< orphan*/  slotid; int /*<<< orphan*/  sequenceid; } ;
typedef  scalar_t__ bool_t ;
typedef  int /*<<< orphan*/  XDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool_t FUNC2(XDR *xdr, struct cb_sequence_ref *args)
{
    bool_t result;

    result = FUNC1(xdr, &args->sequenceid);
    if (!result) { FUNC0("sequence_ref.sequenceid"); goto out; }

    result = FUNC1(xdr, &args->slotid);
    if (!result) { FUNC0("sequence_ref.slotid"); goto out; }
out:
    return result;
}