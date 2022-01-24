#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_9__ {int /*<<< orphan*/  path; } ;
struct TYPE_7__ {int /*<<< orphan*/  create_opts; int /*<<< orphan*/  access_mode; int /*<<< orphan*/  access_mask; int /*<<< orphan*/  disposition; int /*<<< orphan*/  ea; TYPE_5__ symlink; int /*<<< orphan*/  srv_open; int /*<<< orphan*/  mode; int /*<<< orphan*/  open_owner_id; int /*<<< orphan*/  file_attrs; int /*<<< orphan*/  path; } ;
typedef  TYPE_2__ open_upcall_args ;
struct TYPE_6__ {TYPE_2__ open; } ;
struct TYPE_8__ {TYPE_1__ args; } ;
typedef  TYPE_3__ nfs41_upcall ;
typedef  int /*<<< orphan*/  ULONG ;
typedef  int /*<<< orphan*/  LONG ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (unsigned char**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (unsigned char**,int /*<<< orphan*/ *,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 
 int FUNC7 (unsigned char**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC8(unsigned char *buffer, uint32_t length, nfs41_upcall *upcall)
{
    int status;
    open_upcall_args *args = &upcall->args.open;

    status = FUNC1(&buffer, &length, &args->path);
    if (status) goto out;
    status = FUNC7(&buffer, &length, &args->access_mask, sizeof(ULONG));
    if (status) goto out;
    status = FUNC7(&buffer, &length, &args->access_mode, sizeof(ULONG));
    if (status) goto out;
    status = FUNC7(&buffer, &length, &args->file_attrs, sizeof(ULONG));
    if (status) goto out;
    status = FUNC7(&buffer, &length, &args->create_opts, sizeof(ULONG));
    if (status) goto out;
    status = FUNC7(&buffer, &length, &args->disposition, sizeof(ULONG));
    if (status) goto out;
    status = FUNC7(&buffer, &length, &args->open_owner_id, sizeof(LONG));
    if (status) goto out;
    status = FUNC7(&buffer, &length, &args->mode, sizeof(DWORD));
    if (status) goto out;
    status = FUNC7(&buffer, &length, &args->srv_open, sizeof(HANDLE));
    if (status) goto out;
    status = FUNC2(&buffer, &length, &args->symlink);
    if (status) goto out;
    status = FUNC7(&buffer, &length, &args->ea, sizeof(HANDLE));
    if (status) goto out;

    FUNC0(1, "parsing NFS41_OPEN: filename='%s' access mask=%d "
        "access mode=%d\n\tfile attrs=0x%x create attrs=0x%x "
        "(kernel) disposition=%d\n\topen_owner_id=%d mode=%o "
        "srv_open=%p symlink=%s ea=%p\n", args->path, args->access_mask,
        args->access_mode, args->file_attrs, args->create_opts,
        args->disposition, args->open_owner_id, args->mode, args->srv_open,
        args->symlink.path, args->ea);
    FUNC5(2, args->disposition);
    FUNC3(2, args->access_mask);
    FUNC6(2, args->access_mode);
    FUNC4(2, args->create_opts);
out:
    return status;
}