
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_7__ {int wsize; int rsize; int sec_flavor; int path; int hostname; } ;
struct TYPE_5__ {TYPE_3__ mount; } ;
struct TYPE_6__ {TYPE_1__ args; } ;
typedef TYPE_2__ nfs41_upcall ;
typedef TYPE_3__ mount_upcall_args ;
typedef int DWORD ;


 int dprintf (int,char*,int ,int ,int ,int ,int ) ;
 int get_name (unsigned char**,int *,int *) ;
 int safe_read (unsigned char**,int *,int *,int) ;
 int secflavorop2name (int ) ;

__attribute__((used)) static int parse_mount(unsigned char *buffer, uint32_t length, nfs41_upcall *upcall)
{
    int status;
    mount_upcall_args *args = &upcall->args.mount;

    status = get_name(&buffer, &length, &args->hostname);
    if(status) goto out;
    status = get_name(&buffer, &length, &args->path);
    if(status) goto out;
    status = safe_read(&buffer, &length, &args->sec_flavor, sizeof(DWORD));
    if (status) goto out;
    status = safe_read(&buffer, &length, &args->rsize, sizeof(DWORD));
    if (status) goto out;
    status = safe_read(&buffer, &length, &args->wsize, sizeof(DWORD));
    if (status) goto out;

    dprintf(1, "parsing NFS14_MOUNT: srv_name=%s root=%s sec_flavor=%s "
        "rsize=%d wsize=%d\n", args->hostname, args->path,
        secflavorop2name(args->sec_flavor), args->rsize, args->wsize);
out:
    return status;
}
