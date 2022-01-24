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
struct cb_recall_slot_args {int /*<<< orphan*/  target_highest_slotid; } ;
typedef  int /*<<< orphan*/  bool_t ;
typedef  int /*<<< orphan*/  XDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool_t FUNC2(XDR *xdr, struct cb_recall_slot_args *res)
{
    bool_t result;

    result = FUNC1(xdr, &res->target_highest_slotid);
    if (!result) { FUNC0("recall_slot.target_highest_slotid"); goto out; }
out:
    return result;
}