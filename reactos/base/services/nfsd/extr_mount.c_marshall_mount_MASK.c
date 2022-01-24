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
struct TYPE_7__ {int /*<<< orphan*/  FsAttrs; int /*<<< orphan*/  lease_time; } ;
struct TYPE_5__ {TYPE_3__ mount; } ;
struct TYPE_6__ {int /*<<< orphan*/  root_ref; TYPE_1__ args; } ;
typedef  TYPE_2__ nfs41_upcall ;
typedef  TYPE_3__ mount_upcall_args ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  NFS41D_VERSION ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (unsigned char**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC2(unsigned char *buffer, uint32_t *length, nfs41_upcall *upcall)
{
    mount_upcall_args *args = &upcall->args.mount;
    int status;
    FUNC0(2, "NFS41_MOUNT: writing pointer to nfs41_root %p, version %d, "
        "lease_time %d\n", upcall->root_ref, NFS41D_VERSION, args->lease_time);
    status = FUNC1(&buffer, length, &upcall->root_ref, sizeof(HANDLE));
    if (status) goto out;
    status = FUNC1(&buffer, length, &NFS41D_VERSION, sizeof(DWORD));
    if (status) goto out;
    status = FUNC1(&buffer, length, &args->lease_time, sizeof(DWORD));
    if (status) goto out;
    status = FUNC1(&buffer, length, &args->FsAttrs, sizeof(args->FsAttrs));
out:
    return status;
}