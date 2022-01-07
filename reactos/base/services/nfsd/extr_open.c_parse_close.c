
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_7__ {char* path; scalar_t__ remove; scalar_t__ renamed; scalar_t__ srv_open; } ;
struct TYPE_5__ {TYPE_3__ close; } ;
struct TYPE_6__ {TYPE_1__ args; } ;
typedef TYPE_2__ nfs41_upcall ;
typedef TYPE_3__ close_upcall_args ;
typedef int HANDLE ;
typedef int BOOLEAN ;


 int dprintf (int,char*,scalar_t__,scalar_t__,scalar_t__,char*) ;
 int get_name (unsigned char**,int *,char**) ;
 int safe_read (unsigned char**,int *,scalar_t__*,int) ;

__attribute__((used)) static int parse_close(unsigned char *buffer, uint32_t length, nfs41_upcall *upcall)
{
    int status;
    close_upcall_args *args = &upcall->args.close;

    status = safe_read(&buffer, &length, &args->remove, sizeof(BOOLEAN));
    if (status) goto out;
    status = safe_read(&buffer, &length, &args->srv_open, sizeof(HANDLE));
    if (status) goto out;
    if (args->remove) {
        status = get_name(&buffer, &length, &args->path);
        if (status) goto out;
        status = safe_read(&buffer, &length, &args->renamed, sizeof(BOOLEAN));
        if (status) goto out;
    }

    dprintf(1, "parsing NFS41_CLOSE: remove=%d srv_open=%x renamed=%d "
        "filename='%s'\n", args->remove, args->srv_open, args->renamed,
        args->remove ? args->path : "");
out:
    return status;
}
