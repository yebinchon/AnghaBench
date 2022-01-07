
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {int * target_set; scalar_t__ set; int * path; } ;
typedef TYPE_2__ symlink_upcall_args ;
struct TYPE_5__ {TYPE_2__ symlink; } ;
struct TYPE_7__ {TYPE_1__ args; } ;
typedef TYPE_3__ nfs41_upcall ;
typedef int BOOLEAN ;


 int dprintf (int,char*,int *,scalar_t__,int *) ;
 int get_name (unsigned char**,int *,int **) ;
 int safe_read (unsigned char**,int *,scalar_t__*,int) ;

__attribute__((used)) static int parse_symlink(unsigned char *buffer, uint32_t length, nfs41_upcall *upcall)
{
    symlink_upcall_args *args = &upcall->args.symlink;
    int status;

    status = get_name(&buffer, &length, &args->path);
    if (status) goto out;
    status = safe_read(&buffer, &length, &args->set, sizeof(BOOLEAN));
    if (status) goto out;

    if (args->set)
        status = get_name(&buffer, &length, &args->target_set);
    else
        args->target_set = ((void*)0);

    dprintf(1, "parsing NFS41_SYMLINK: path='%s' set=%u target='%s'\n",
        args->path, args->set, args->target_set);
out:
    return status;
}
