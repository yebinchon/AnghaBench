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
struct cb_recall_file {int /*<<< orphan*/  stateid; int /*<<< orphan*/  length; int /*<<< orphan*/  offset; int /*<<< orphan*/  fh; } ;
typedef  scalar_t__ bool_t ;
typedef  int /*<<< orphan*/  XDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool_t FUNC4(XDR *xdr, struct cb_recall_file *args)
{
    bool_t result;

    result = FUNC1(xdr, &args->fh);
    if (!result) { FUNC0("layoutrecall_file.fh"); goto out; }

    result = FUNC3(xdr, &args->offset);
    if (!result) { FUNC0("layoutrecall_file.offset"); goto out; }

    result = FUNC3(xdr, &args->length);
    if (!result) { FUNC0("layoutrecall_file.length"); goto out; }

    result = FUNC2(xdr, &args->stateid);
    if (!result) { FUNC0("layoutrecall_file.stateid"); goto out; }
out:
    return result;
}