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
struct TYPE_6__ {int /*<<< orphan*/  query; scalar_t__ sec_desc; } ;
typedef  TYPE_2__ setacl_upcall_args ;
struct TYPE_5__ {TYPE_2__ setacl; } ;
struct TYPE_7__ {TYPE_1__ args; } ;
typedef  TYPE_3__ nfs41_upcall ;
typedef  int /*<<< orphan*/  ULONG ;
typedef  scalar_t__ PSECURITY_DESCRIPTOR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (unsigned char**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC2(unsigned char *buffer, uint32_t length, 
                        nfs41_upcall *upcall)
{
    int status;
    setacl_upcall_args *args = &upcall->args.setacl;
    ULONG sec_desc_len;

    status = FUNC1(&buffer, &length, &args->query, sizeof(args->query));
    if (status) goto out;
    status = FUNC1(&buffer, &length, &sec_desc_len, sizeof(ULONG));
    if (status) goto out;
    args->sec_desc = (PSECURITY_DESCRIPTOR)buffer;

    FUNC0(1, "parsing NFS41_ACL_SET: info_class=%d sec_desc_len=%d\n", 
            args->query, sec_desc_len);
out:
    return status;
}