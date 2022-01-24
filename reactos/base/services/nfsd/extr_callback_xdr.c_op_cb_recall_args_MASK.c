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
struct cb_recall_args {int /*<<< orphan*/  fh; int /*<<< orphan*/  truncate; int /*<<< orphan*/  stateid; } ;
typedef  scalar_t__ bool_t ;
typedef  int /*<<< orphan*/  XDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool_t FUNC4(XDR *xdr, struct cb_recall_args *args)
{
    bool_t result;

    result = FUNC2(xdr, &args->stateid);
    if (!result) { FUNC0("recall.stateid"); goto out; }

    result = FUNC3(xdr, &args->truncate);
    if (!result) { FUNC0("recall.truncate"); goto out; }

    result = FUNC1(xdr, &args->fh);
    if (!result) { FUNC0("recall.fh"); goto out; }
out:
    return result;
}