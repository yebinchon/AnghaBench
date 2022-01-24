#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  args; int /*<<< orphan*/  type; } ;
struct cb_layoutrecall_args {TYPE_1__ recall; int /*<<< orphan*/  changed; int /*<<< orphan*/  iomode; int /*<<< orphan*/  type; } ;
typedef  int /*<<< orphan*/  enum_t ;
typedef  scalar_t__ bool_t ;
typedef  int /*<<< orphan*/  XDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  NULL_xdrproc_t ; 
 int /*<<< orphan*/  cb_layoutrecall_discrim ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool_t FUNC4(XDR *xdr, struct cb_layoutrecall_args *args)
{
    bool_t result;

    result = FUNC2(xdr, (enum_t*)&args->type);
    if (!result) { FUNC0("layoutrecall_args.type"); goto out; }

    result = FUNC2(xdr, (enum_t*)&args->iomode);
    if (!result) { FUNC0("layoutrecall_args.iomode"); goto out; }

    result = FUNC1(xdr, &args->changed);
    if (!result) { FUNC0("layoutrecall_args.changed"); goto out; }

    result = FUNC3(xdr, (enum_t*)&args->recall.type,
        (char*)&args->recall.args, cb_layoutrecall_discrim, NULL_xdrproc_t);
    if (!result) { FUNC0("layoutrecall_args.recall"); goto out; }
out:
    return result;
}