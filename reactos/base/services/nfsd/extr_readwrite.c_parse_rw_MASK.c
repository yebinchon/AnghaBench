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
struct TYPE_6__ {int /*<<< orphan*/  buffer; int /*<<< orphan*/  offset; int /*<<< orphan*/  len; } ;
typedef  TYPE_2__ readwrite_upcall_args ;
struct TYPE_5__ {TYPE_2__ rw; } ;
struct TYPE_7__ {int /*<<< orphan*/  opcode; TYPE_1__ args; } ;
typedef  TYPE_3__ nfs41_upcall ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (unsigned char**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC3(unsigned char *buffer, uint32_t length, nfs41_upcall *upcall)
{
    int status;
    readwrite_upcall_args *args = &upcall->args.rw;

    status = FUNC2(&buffer, &length, &args->len, sizeof(args->len));
    if (status) goto out;
    status = FUNC2(&buffer, &length, &args->offset, sizeof(args->offset));
    if (status) goto out;
    status = FUNC2(&buffer, &length, &args->buffer, sizeof(args->buffer));
    if (status) goto out;

    FUNC0(1, "parsing %s len=%lu offset=%llu buf=%p\n", 
            FUNC1(upcall->opcode), args->len, args->offset, args->buffer);
out:
    return status;
}