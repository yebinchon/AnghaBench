
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_42__ TYPE_7__ ;
typedef struct TYPE_41__ TYPE_6__ ;
typedef struct TYPE_40__ TYPE_5__ ;
typedef struct TYPE_39__ TYPE_4__ ;
typedef struct TYPE_38__ TYPE_3__ ;
typedef struct TYPE_37__ TYPE_31__ ;
typedef struct TYPE_36__ TYPE_2__ ;
typedef struct TYPE_35__ TYPE_26__ ;
typedef struct TYPE_34__ TYPE_25__ ;
typedef struct TYPE_33__ TYPE_1__ ;
typedef struct TYPE_32__ TYPE_14__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_36__ {int root; int buf; TYPE_4__* state; } ;
typedef TYPE_2__ setattr_upcall_args ;
typedef int nfs41_session ;
struct TYPE_34__ {scalar_t__ superblock; } ;
struct TYPE_40__ {scalar_t__ name; } ;
struct TYPE_38__ {TYPE_25__ fh; TYPE_5__ name; TYPE_1__* path; } ;
typedef TYPE_3__ nfs41_path_fh ;
struct TYPE_35__ {scalar_t__ superblock; } ;
struct TYPE_32__ {TYPE_26__ fh; } ;
struct TYPE_37__ {int lock; } ;
struct TYPE_39__ {TYPE_14__ parent; int * session; TYPE_3__ file; TYPE_31__ path; } ;
typedef TYPE_4__ nfs41_open_state ;
typedef TYPE_5__ nfs41_component ;
struct TYPE_41__ {unsigned short len; scalar_t__ path; int member_0; } ;
typedef TYPE_6__ nfs41_abs_path ;
typedef int WCHAR ;
struct TYPE_42__ {int FileNameLength; int ReplaceIfExists; scalar_t__ FileName; } ;
struct TYPE_33__ {int path; } ;
typedef TYPE_7__* PFILE_RENAME_INFO ;


 int AcquireSRWLockShared (int *) ;
 int CP_UTF8 ;
 int ERROR_ACCESS_DENIED ;
 int ERROR_FILE_EXISTS ;
 int ERROR_FILE_NOT_FOUND ;
 int ERROR_INVALID_PARAMETER ;
 int ERROR_NOT_SAME_DEVICE ;
 int ERROR_REPARSE ;
 int ERROR_TOO_MANY_LINKS ;
 int FALSE ;
 int NFS41_MAX_PATH_LEN ;
 scalar_t__ NFS41_MAX_SYMLINK_DEPTH ;
 int NO_ERROR ;
 int OPEN_DELEGATE_WRITE ;
 int ReleaseSRWLockShared (int *) ;
 int TRUE ;
 scalar_t__ WideCharToMultiByte (int ,int ,scalar_t__,int,scalar_t__,int ,int *,int *) ;
 int abs_path_copy (TYPE_6__*,TYPE_31__*) ;
 int create_silly_rename (TYPE_6__*,TYPE_25__*,TYPE_5__*) ;
 int dprintf (int,char*,int ,...) ;
 int eprintf (char*,scalar_t__,...) ;
 int fh_copy (TYPE_25__*,TYPE_26__*) ;
 int is_dst_name_opened (TYPE_6__*,int *) ;
 int last_component (scalar_t__,scalar_t__,TYPE_5__*) ;
 int nfs41_delegation_return (int *,TYPE_3__*,int ,int ) ;
 int nfs41_lookup (int ,int *,TYPE_6__*,TYPE_3__*,TYPE_3__*,int *,int **) ;
 int nfs41_rename (int *,TYPE_14__*,TYPE_5__*,TYPE_3__*,TYPE_5__*) ;
 int * nfs41_root_session (int ) ;
 int nfs41_symlink_target (int *,TYPE_3__*,TYPE_6__*) ;
 int nfs_error_string (int) ;
 int nfs_to_windows_error (int,int ) ;
 int open_state_rename (TYPE_4__*,TYPE_6__*) ;
 int path_fh_init (TYPE_3__*,TYPE_6__*) ;

__attribute__((used)) static int handle_nfs41_rename(setattr_upcall_args *args)
{
    nfs41_open_state *state = args->state;
    nfs41_session *dst_session;
    PFILE_RENAME_INFO rename = (PFILE_RENAME_INFO)args->buf;
    nfs41_abs_path dst_path = { 0 };
    nfs41_path_fh dst_dir, dst;
    nfs41_component dst_name, *src_name;
    uint32_t depth = 0;
    int status;

    src_name = &state->file.name;

    if (rename->FileNameLength == 0) {


        AcquireSRWLockShared(&state->path.lock);
        abs_path_copy(&dst_path, &state->path);
        ReleaseSRWLockShared(&state->path.lock);

        path_fh_init(&dst_dir, &dst_path);
        fh_copy(&dst_dir.fh, &state->parent.fh);

        create_silly_rename(&dst_path, &state->file.fh, &dst_name);
        dprintf(1, "silly rename: %s -> %s\n", src_name->name, dst_name.name);


        nfs41_delegation_return(state->session, &state->file,
            OPEN_DELEGATE_WRITE, TRUE);

        status = nfs41_rename(state->session,
            &state->parent, src_name,
            &dst_dir, &dst_name);
        if (status) {
            dprintf(1, "nfs41_rename() failed with error %s.\n",
                nfs_error_string(status));
            status = nfs_to_windows_error(status, ERROR_ACCESS_DENIED);
        } else {

            open_state_rename(state, &dst_path);
        }
        goto out;
    }

    dst_path.len = (unsigned short)WideCharToMultiByte(CP_UTF8, 0,
        rename->FileName, rename->FileNameLength/sizeof(WCHAR),
        dst_path.path, NFS41_MAX_PATH_LEN, ((void*)0), ((void*)0));
    if (dst_path.len == 0) {
        eprintf("WideCharToMultiByte failed to convert destination "
            "filename %S.\n", rename->FileName);
        status = ERROR_INVALID_PARAMETER;
        goto out;
    }
    path_fh_init(&dst_dir, &dst_path);


    status = nfs41_lookup(args->root, nfs41_root_session(args->root),
        &dst_path, &dst_dir, &dst, ((void*)0), &dst_session);

    while (status == ERROR_REPARSE) {
        if (++depth > NFS41_MAX_SYMLINK_DEPTH) {
            status = ERROR_TOO_MANY_LINKS;
            goto out;
        }


        status = nfs41_symlink_target(dst_session, &dst_dir, &dst_path);
        if (status) {
            eprintf("nfs41_symlink_target() for %s failed with %d\n",
                dst_dir.path->path, status);
            goto out;
        }


        status = nfs41_lookup(args->root, dst_session,
            &dst_path, &dst_dir, ((void*)0), ((void*)0), &dst_session);
    }


    last_component(dst_path.path, dst_path.path + dst_path.len, &dst_name);
    last_component(dst_path.path, dst_name.name, &dst_dir.name);

    if (status == NO_ERROR) {
        if (!rename->ReplaceIfExists) {
            status = ERROR_FILE_EXISTS;
            goto out;
        }

        nfs41_delegation_return(dst_session, &dst,
            OPEN_DELEGATE_WRITE, TRUE);
    } else if (status != ERROR_FILE_NOT_FOUND) {
        dprintf(1, "nfs41_lookup('%s') failed to find destination "
            "directory with %d\n", dst_path.path, status);
        goto out;
    }




    if (state->parent.fh.superblock != dst_dir.fh.superblock) {
        status = ERROR_NOT_SAME_DEVICE;
        goto out;
    }

    status = is_dst_name_opened(&dst_path, dst_session);
    if (status) {



        eprintf("handle_nfs41_rename: %s is opened\n", dst_path.path);
        status = ERROR_FILE_EXISTS;
        goto out;
    }


    nfs41_delegation_return(state->session, &state->file,
        OPEN_DELEGATE_WRITE, FALSE);

    status = nfs41_rename(state->session,
        &state->parent, src_name,
        &dst_dir, &dst_name);
    if (status) {
        dprintf(1, "nfs41_rename() failed with error %s.\n",
            nfs_error_string(status));
        status = nfs_to_windows_error(status, ERROR_ACCESS_DENIED);
    } else {

        open_state_rename(state, &dst_path);
    }
out:
    return status;
}
