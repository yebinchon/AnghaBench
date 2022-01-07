
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {unsigned char* buf; int count; int buf_len; } ;
typedef TYPE_2__ unlock_upcall_args ;
typedef int uint32_t ;
struct TYPE_5__ {TYPE_2__ unlock; } ;
struct TYPE_7__ {TYPE_1__ args; } ;
typedef TYPE_3__ nfs41_upcall ;
typedef int ULONG ;


 int dprintf (int,char*,int ) ;
 int safe_read (unsigned char**,int *,int *,int) ;

__attribute__((used)) static int parse_unlock(unsigned char *buffer, uint32_t length, nfs41_upcall *upcall)
{
    int status;
    unlock_upcall_args *args = &upcall->args.unlock;

    status = safe_read(&buffer, &length, &args->count, sizeof(ULONG));
    if (status) goto out;

    args->buf = buffer;
    args->buf_len = length;

    dprintf(1, "parsing NFS41_UNLOCK: count=%u\n", args->count);
out:
    return status;
}
