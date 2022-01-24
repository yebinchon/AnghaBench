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
union cb_recall_file_args {int /*<<< orphan*/  fsid; } ;
typedef  int /*<<< orphan*/  bool_t ;
typedef  int /*<<< orphan*/  XDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool_t FUNC2(XDR *xdr, union cb_recall_file_args *args)
{
    bool_t result;

    result = FUNC1(xdr, &args->fsid);
    if (!result) { FUNC0("layoutrecall_fsid.fsid"); goto out; }
out:
    return result;
}