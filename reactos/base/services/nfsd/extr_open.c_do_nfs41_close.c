
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int stateid; int type; int * delegation; TYPE_2__* open; } ;
typedef TYPE_1__ stateid_arg ;
typedef int stateid4 ;
struct TYPE_6__ {int file; int session; int stateid; } ;
typedef TYPE_2__ nfs41_open_state ;


 int ERROR_INTERNAL_ERROR ;
 int STATEID_OPEN ;
 int dprintf (int,char*,int ) ;
 int memcpy (int *,int *,int) ;
 int nfs41_close (int ,int *,TYPE_1__*) ;
 int nfs_error_string (int) ;
 int nfs_to_windows_error (int,int ) ;

__attribute__((used)) static int do_nfs41_close(nfs41_open_state *state)
{
    int status;
    stateid_arg stateid;
    stateid.open = state;
    stateid.delegation = ((void*)0);
    stateid.type = STATEID_OPEN;
    memcpy(&stateid.stateid, &state->stateid, sizeof(stateid4));

    status = nfs41_close(state->session, &state->file, &stateid);
    if (status) {
        dprintf(1, "nfs41_close() failed with error %s.\n",
            nfs_error_string(status));
        status = nfs_to_windows_error(status, ERROR_INTERNAL_ERROR);
    }

    return status;
}
