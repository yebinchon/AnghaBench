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
struct TYPE_6__ {unsigned char* buf; int /*<<< orphan*/  mode; int /*<<< orphan*/  buf_len; int /*<<< orphan*/  path; } ;
typedef  TYPE_2__ setexattr_upcall_args ;
struct TYPE_5__ {TYPE_2__ setexattr; } ;
struct TYPE_7__ {TYPE_1__ args; } ;
typedef  TYPE_3__ nfs41_upcall ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (unsigned char**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (unsigned char**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC3(unsigned char *buffer, uint32_t length, nfs41_upcall *upcall)
{
    int status;
    setexattr_upcall_args *args = &upcall->args.setexattr;

    status = FUNC1(&buffer, &length, &args->path);
    if (status) goto out;
    status = FUNC2(&buffer, &length, &args->mode, sizeof(args->mode));
    if (status) goto out;
    status = FUNC2(&buffer, &length, &args->buf_len, sizeof(args->buf_len));
    if (status) goto out;
    args->buf = buffer;

    FUNC0(1, "parsing NFS41_EA_SET: mode=%o\n", args->mode);
out:
    return status;
}