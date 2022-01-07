
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_9__ ;
typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_10__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_20__ {unsigned short len; int path; } ;
struct TYPE_21__ {char* target_set; TYPE_5__ target_get; scalar_t__ set; } ;
typedef TYPE_6__ symlink_upcall_args ;
struct TYPE_16__ {TYPE_6__ symlink; } ;
struct TYPE_22__ {TYPE_8__* state_ref; TYPE_1__ args; } ;
typedef TYPE_7__ nfs41_upcall ;
struct TYPE_17__ {int fileid; scalar_t__ len; } ;
struct TYPE_15__ {TYPE_4__* path; TYPE_2__ fh; int name; } ;
struct TYPE_23__ {TYPE_10__ file; int session; int parent; } ;
typedef TYPE_8__ nfs41_open_state ;
struct TYPE_18__ {int count; scalar_t__* arr; } ;
struct TYPE_24__ {int mode; TYPE_3__ attrmask; } ;
typedef TYPE_9__ nfs41_file_info ;
struct TYPE_19__ {char* path; } ;


 scalar_t__ FATTR4_WORD1_MODE ;
 int NF4LNK ;
 int NFS41_MAX_PATH_LEN ;
 int NO_ERROR ;
 int dprintf (int,char*,int ) ;
 int eprintf (char*,char*,...) ;
 int map_symlink_errors (int) ;
 int nfs41_create (int ,int ,TYPE_9__*,char*,int *,TYPE_10__*,TYPE_9__*) ;
 int nfs41_readlink (int ,TYPE_10__*,int ,int ,scalar_t__*) ;
 int nfs41_remove (int ,int *,int *,int ) ;
 int nfs_error_string (int) ;

__attribute__((used)) static int handle_symlink(nfs41_upcall *upcall)
{
    symlink_upcall_args *args = &upcall->args.symlink;
    nfs41_open_state *state = upcall->state_ref;
    int status = NO_ERROR;

    if (args->set) {
        nfs41_file_info info, createattrs;


        char *p;
        for (p = args->target_set; *p; p++) if (*p == '\\') *p = '/';

        if (state->file.fh.len) {


            eprintf("handle_symlink: attempting to create a symlink when "
                "the file=%s was already created on open; sending REMOVE "
                "first\n", state->file.path->path);
            status = nfs41_remove(state->session, &state->parent,
                &state->file.name, state->file.fh.fileid);
            if (status) {
                eprintf("nfs41_remove() for symlink=%s failed with %s\n",
                    args->target_set, nfs_error_string(status));
                status = map_symlink_errors(status);
                goto out;
            }
        }


        createattrs.attrmask.count = 2;
        createattrs.attrmask.arr[0] = 0;
        createattrs.attrmask.arr[1] = FATTR4_WORD1_MODE;
        createattrs.mode = 0777;
        status = nfs41_create(state->session, NF4LNK, &createattrs,
            args->target_set, &state->parent, &state->file, &info);
        if (status) {
            eprintf("nfs41_create() for symlink=%s failed with %s\n",
                args->target_set, nfs_error_string(status));
            status = map_symlink_errors(status);
            goto out;
        }
    } else {
        uint32_t len;


        status = nfs41_readlink(state->session, &state->file,
            NFS41_MAX_PATH_LEN, args->target_get.path, &len);
        if (status) {
            eprintf("nfs41_readlink() for filename=%s failed with %s\n",
                state->file.path->path, nfs_error_string(status));
            status = map_symlink_errors(status);
            goto out;
        }
        args->target_get.len = (unsigned short)len;
        dprintf(2, "returning symlink target '%s'\n", args->target_get.path);
    }
out:
    return status;
}
