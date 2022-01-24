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
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_6__ {int /*<<< orphan*/ * target_set; scalar_t__ set; int /*<<< orphan*/ * path; } ;
typedef  TYPE_2__ symlink_upcall_args ;
struct TYPE_5__ {TYPE_2__ symlink; } ;
struct TYPE_7__ {TYPE_1__ args; } ;
typedef  TYPE_3__ nfs41_upcall ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 int FUNC1 (unsigned char**,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int FUNC2 (unsigned char**,int /*<<< orphan*/ *,scalar_t__*,int) ; 

__attribute__((used)) static int FUNC3(unsigned char *buffer, uint32_t length, nfs41_upcall *upcall)
{
    symlink_upcall_args *args = &upcall->args.symlink;
    int status;

    status = FUNC1(&buffer, &length, &args->path);
    if (status) goto out;
    status = FUNC2(&buffer, &length, &args->set, sizeof(BOOLEAN));
    if (status) goto out;

    if (args->set)
        status = FUNC1(&buffer, &length, &args->target_set);
    else
        args->target_set = NULL;

    FUNC0(1, "parsing NFS41_SYMLINK: path='%s' set=%u target='%s'\n",
        args->path, args->set, args->target_set);
out:
    return status;
}