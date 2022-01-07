
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int query; } ;
typedef TYPE_2__ volume_upcall_args ;
typedef int uint32_t ;
struct TYPE_5__ {TYPE_2__ volume; } ;
struct TYPE_7__ {TYPE_1__ args; } ;
typedef TYPE_3__ nfs41_upcall ;
typedef int FS_INFORMATION_CLASS ;


 int dprintf (int,char*,int ) ;
 int safe_read (unsigned char**,int *,int *,int) ;

__attribute__((used)) static int parse_volume(unsigned char *buffer, uint32_t length, nfs41_upcall *upcall)
{
    int status;
    volume_upcall_args *args = &upcall->args.volume;

    status = safe_read(&buffer, &length, &args->query, sizeof(FS_INFORMATION_CLASS));
    if (status) goto out;

    dprintf(1, "parsing NFS41_VOLUME_QUERY: query=%d\n", args->query);
out:
    return status;
}
