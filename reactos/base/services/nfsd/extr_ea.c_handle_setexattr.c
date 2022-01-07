
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int stateid_arg ;
struct TYPE_15__ {int ctime; int mode; int buf; } ;
typedef TYPE_3__ setexattr_upcall_args ;
struct TYPE_13__ {TYPE_3__ setexattr; } ;
struct TYPE_16__ {TYPE_5__* state_ref; TYPE_1__ args; } ;
typedef TYPE_4__ nfs41_upcall ;
struct TYPE_17__ {int file; int session; } ;
typedef TYPE_5__ nfs41_open_state ;
struct TYPE_14__ {int count; scalar_t__* arr; } ;
struct TYPE_18__ {int change; TYPE_2__ attrmask; int mode; } ;
typedef TYPE_6__ nfs41_file_info ;
struct TYPE_19__ {int EaNameLength; int EaName; } ;
typedef TYPE_7__* PFILE_FULL_EA_INFORMATION ;


 int ERROR_NOT_SUPPORTED ;
 int FALSE ;
 scalar_t__ FATTR4_WORD1_MODE ;
 int OPEN_DELEGATE_READ ;
 int dprintf (int,char*,int ) ;
 int nfs41_delegation_return (int ,int *,int ,int ) ;
 int nfs41_ea_set (TYPE_5__*,TYPE_7__*) ;
 int nfs41_open_stateid_arg (TYPE_5__*,int *) ;
 int nfs41_setattr (int ,int *,int *,TYPE_6__*) ;
 int nfs_error_string (int) ;
 int nfs_to_windows_error (int,int ) ;
 scalar_t__ strncmp (char*,int ,int) ;

__attribute__((used)) static int handle_setexattr(nfs41_upcall *upcall)
{
    int status;
    setexattr_upcall_args *args = &upcall->args.setexattr;
    nfs41_open_state *state = upcall->state_ref;
    PFILE_FULL_EA_INFORMATION ea =
        (PFILE_FULL_EA_INFORMATION)args->buf;


    nfs41_delegation_return(state->session, &state->file,
        OPEN_DELEGATE_READ, FALSE);

    if (strncmp("NfsV3Attributes", ea->EaName, ea->EaNameLength) == 0
            && sizeof("NfsV3Attributes")-1 == ea->EaNameLength) {
        nfs41_file_info info;
        stateid_arg stateid;

        nfs41_open_stateid_arg(state, &stateid);

        info.mode = args->mode;
        info.attrmask.arr[0] = 0;
        info.attrmask.arr[1] = FATTR4_WORD1_MODE;
        info.attrmask.count = 2;

        status = nfs41_setattr(state->session, &state->file, &stateid, &info);
        if (status) {
            dprintf(1, "nfs41_setattr() failed with error %s.\n",
                nfs_error_string(status));
            goto out;
        }

        args->ctime = info.change;
        goto out;
    }

    status = nfs41_ea_set(state, ea);
out:
    return nfs_to_windows_error(status, ERROR_NOT_SUPPORTED);
}
