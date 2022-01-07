
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_18__ {int QuadPart; } ;
struct TYPE_19__ {TYPE_3__ IndexNumber; } ;
struct TYPE_17__ {int ReparseTag; int FileAttributes; } ;
struct TYPE_23__ {int query_class; int network_info; TYPE_4__ intr_info; TYPE_2__ tag_info; int std_info; int ctime; int basic_info; } ;
struct TYPE_16__ {TYPE_8__ getattr; } ;
struct TYPE_20__ {int root_ref; TYPE_6__* state_ref; TYPE_1__ args; } ;
typedef TYPE_5__ nfs41_upcall ;
struct TYPE_21__ {int file; int session; } ;
typedef TYPE_6__ nfs41_open_state ;
struct TYPE_22__ {scalar_t__ type; int fileid; int change; int symlink_dir; int member_0; } ;
typedef TYPE_7__ nfs41_file_info ;
typedef TYPE_8__ getattr_upcall_args ;


 int ERROR_INVALID_PARAMETER ;





 int IO_REPARSE_TAG_SYMLINK ;
 scalar_t__ NF4DIR ;
 scalar_t__ NF4LNK ;
 int NO_ERROR ;
 int TRUE ;
 int eprintf (char*,int) ;
 int nfs41_cached_getattr (int ,int *,TYPE_7__*) ;
 int nfs41_symlink_follow (int ,int ,int *,TYPE_7__*) ;
 int nfs_file_info_to_attributes (TYPE_7__*) ;
 int nfs_to_basic_info (TYPE_7__*,int *) ;
 int nfs_to_network_openinfo (TYPE_7__*,int *) ;
 int nfs_to_standard_info (TYPE_7__*,int *) ;

__attribute__((used)) static int handle_getattr(nfs41_upcall *upcall)
{
    int status;
    getattr_upcall_args *args = &upcall->args.getattr;
    nfs41_open_state *state = upcall->state_ref;
    nfs41_file_info info = { 0 };

    status = nfs41_cached_getattr(state->session, &state->file, &info);
    if (status) {
        eprintf("nfs41_cached_getattr() failed with %d\n", status);
        goto out;
    }

    if (info.type == NF4LNK) {
        nfs41_file_info target_info;
        int target_status = nfs41_symlink_follow(upcall->root_ref,
            state->session, &state->file, &target_info);
        if (target_status == NO_ERROR && target_info.type == NF4DIR)
            info.symlink_dir = TRUE;
    }

    switch (args->query_class) {
    case 131:
        nfs_to_basic_info(&info, &args->basic_info);
        args->ctime = info.change;
        break;
    case 128:
        nfs_to_standard_info(&info, &args->std_info);
        break;
    case 132:
        args->tag_info.FileAttributes = nfs_file_info_to_attributes(&info);
        args->tag_info.ReparseTag = info.type == NF4LNK ?
            IO_REPARSE_TAG_SYMLINK : 0;
        break;
    case 130:
        args->intr_info.IndexNumber.QuadPart = info.fileid;
        break;
    case 129:
        nfs_to_network_openinfo(&info, &args->network_info);
        break;
    default:
        eprintf("unhandled file query class %d\n", args->query_class);
        status = ERROR_INVALID_PARAMETER;
        break;
    }
out:
    return status;
}
