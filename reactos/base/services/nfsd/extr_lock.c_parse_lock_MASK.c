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
struct TYPE_7__ {int /*<<< orphan*/  blocking; int /*<<< orphan*/  exclusive; int /*<<< orphan*/  length; int /*<<< orphan*/  offset; } ;
struct TYPE_5__ {TYPE_3__ lock; } ;
struct TYPE_6__ {TYPE_1__ args; } ;
typedef  TYPE_2__ nfs41_upcall ;
typedef  TYPE_3__ lock_upcall_args ;
typedef  int /*<<< orphan*/  LONGLONG ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (unsigned char**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC2(unsigned char *buffer, uint32_t length, nfs41_upcall *upcall)
{
    int status;
    lock_upcall_args *args = &upcall->args.lock;

    status = FUNC1(&buffer, &length, &args->offset, sizeof(LONGLONG));
    if (status) goto out;
    status = FUNC1(&buffer, &length, &args->length, sizeof(LONGLONG));
    if (status) goto out;
    status = FUNC1(&buffer, &length, &args->exclusive, sizeof(BOOLEAN));
    if (status) goto out;
    status = FUNC1(&buffer, &length, &args->blocking, sizeof(BOOLEAN));
    if (status) goto out;

    FUNC0(1, "parsing NFS41_LOCK: offset=0x%llx length=0x%llx exclusive=%u "
            "blocking=%u\n", args->offset, args->length, args->exclusive, 
            args->blocking);
out:
    return status;
}