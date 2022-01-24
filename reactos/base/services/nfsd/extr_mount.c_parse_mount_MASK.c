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
struct TYPE_7__ {int /*<<< orphan*/  wsize; int /*<<< orphan*/  rsize; int /*<<< orphan*/  sec_flavor; int /*<<< orphan*/  path; int /*<<< orphan*/  hostname; } ;
struct TYPE_5__ {TYPE_3__ mount; } ;
struct TYPE_6__ {TYPE_1__ args; } ;
typedef  TYPE_2__ nfs41_upcall ;
typedef  TYPE_3__ mount_upcall_args ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (unsigned char**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (unsigned char**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(unsigned char *buffer, uint32_t length, nfs41_upcall *upcall) 
{
    int status;
    mount_upcall_args *args = &upcall->args.mount;

    status = FUNC1(&buffer, &length, &args->hostname);
    if(status) goto out;
    status = FUNC1(&buffer, &length, &args->path);
    if(status) goto out;
    status = FUNC2(&buffer, &length, &args->sec_flavor, sizeof(DWORD));
    if (status) goto out;
    status = FUNC2(&buffer, &length, &args->rsize, sizeof(DWORD));
    if (status) goto out;
    status = FUNC2(&buffer, &length, &args->wsize, sizeof(DWORD));
    if (status) goto out;

    FUNC0(1, "parsing NFS14_MOUNT: srv_name=%s root=%s sec_flavor=%s "
        "rsize=%d wsize=%d\n", args->hostname, args->path, 
        FUNC3(args->sec_flavor), args->rsize, args->wsize);
out:
    return status;
}