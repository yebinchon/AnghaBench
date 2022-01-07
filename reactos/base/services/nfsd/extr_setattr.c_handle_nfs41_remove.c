
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_3__* state; } ;
typedef TYPE_2__ setattr_upcall_args ;
struct TYPE_6__ {int fileid; } ;
struct TYPE_9__ {TYPE_1__ fh; int name; } ;
struct TYPE_8__ {TYPE_4__ file; int parent; int session; } ;
typedef TYPE_3__ nfs41_open_state ;


 int ERROR_ACCESS_DENIED ;
 int OPEN_DELEGATE_WRITE ;
 int TRUE ;
 int dprintf (int,char*,int ) ;
 int nfs41_delegation_return (int ,TYPE_4__*,int ,int ) ;
 int nfs41_remove (int ,int *,int *,int ) ;
 int nfs_error_string (int) ;
 int nfs_to_windows_error (int,int ) ;

__attribute__((used)) static int handle_nfs41_remove(setattr_upcall_args *args)
{
    nfs41_open_state *state = args->state;
    int status;


    nfs41_delegation_return(state->session, &state->file,
        OPEN_DELEGATE_WRITE, TRUE);

    status = nfs41_remove(state->session, &state->parent,
        &state->file.name, state->file.fh.fileid);
    if (status)
        dprintf(1, "nfs41_remove() failed with error %s.\n",
            nfs_error_string(status));

    return nfs_to_windows_error(status, ERROR_ACCESS_DENIED);
}
