
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int stateid_arg ;
struct TYPE_8__ {scalar_t__ out_len; scalar_t__ len; int buffer; int offset; } ;
typedef TYPE_2__ readwrite_upcall_args ;
struct TYPE_7__ {TYPE_2__ rw; } ;
struct TYPE_9__ {int state_ref; TYPE_1__ args; } ;
typedef TYPE_3__ nfs41_upcall ;


 int nfs41_open_stateid_arg (int ,int *) ;
 int write_to_mds (TYPE_3__*,int *) ;
 int write_to_pnfs (TYPE_3__*,int *) ;

__attribute__((used)) static int handle_write(nfs41_upcall *upcall)
{
    readwrite_upcall_args *args = &upcall->args.rw;
    stateid_arg stateid;
    uint32_t pnfs_bytes_written = 0;
    int status;

    nfs41_open_stateid_arg(upcall->state_ref, &stateid);
    status = write_to_mds(upcall, &stateid);
out:
    args->out_len += pnfs_bytes_written;
    return status;
}
