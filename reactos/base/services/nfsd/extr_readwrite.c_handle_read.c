
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int stateid_arg ;
struct TYPE_8__ {scalar_t__ out_len; int len; int buffer; int offset; } ;
typedef TYPE_2__ readwrite_upcall_args ;
struct TYPE_7__ {TYPE_2__ rw; } ;
struct TYPE_9__ {int state_ref; TYPE_1__ args; } ;
typedef TYPE_3__ nfs41_upcall ;
typedef scalar_t__ ULONG ;


 int ERROR_HANDLE_EOF ;
 int NO_ERROR ;
 int nfs41_open_stateid_arg (int ,int *) ;
 int read_from_mds (TYPE_3__*,int *) ;
 int read_from_pnfs (TYPE_3__*,int *) ;

__attribute__((used)) static int handle_read(nfs41_upcall *upcall)
{
    readwrite_upcall_args *args = &upcall->args.rw;
    stateid_arg stateid;
    ULONG pnfs_bytes_read = 0;
    int status = NO_ERROR;

    nfs41_open_stateid_arg(upcall->state_ref, &stateid);
    status = read_from_mds(upcall, &stateid);

    args->out_len += pnfs_bytes_read;
out:
    return status;
}
