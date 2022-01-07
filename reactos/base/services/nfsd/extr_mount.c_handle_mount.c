
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_8__ ;
typedef struct TYPE_27__ TYPE_7__ ;
typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;
typedef struct TYPE_20__ TYPE_15__ ;


struct TYPE_28__ {int lease_time; int FsAttrs; int path; scalar_t__ rsize; scalar_t__ wsize; int sec_flavor; int hostname; } ;
struct TYPE_21__ {TYPE_8__ mount; } ;
struct TYPE_23__ {TYPE_4__* root_ref; int gid; int uid; TYPE_1__ args; } ;
typedef TYPE_3__ nfs41_upcall ;
struct TYPE_24__ {int gid; int uid; } ;
typedef TYPE_4__ nfs41_root ;
struct TYPE_22__ {int superblock; } ;
struct TYPE_25__ {TYPE_2__ fh; } ;
typedef TYPE_5__ nfs41_path_fh ;
struct TYPE_26__ {TYPE_15__* session; } ;
typedef TYPE_6__ nfs41_client ;
struct TYPE_27__ {unsigned short len; int path; int lock; } ;
typedef TYPE_7__ nfs41_abs_path ;
typedef int multi_addr4 ;
typedef TYPE_8__ mount_upcall_args ;
struct TYPE_20__ {int lease_time; } ;


 int ERROR_BAD_NETPATH ;
 int ERROR_FILENAME_EXCED_RANGE ;
 scalar_t__ FAILED (int ) ;
 TYPE_4__* INVALID_HANDLE_VALUE ;
 int InitializeSRWLock (int *) ;
 int NFS41_MAX_PATH_LEN ;
 scalar_t__ READ_OVERHEAD ;
 int StringCchCopyA (int ,int ,int ) ;
 scalar_t__ WRITE_OVERHEAD ;
 int eprintf (char*,int,...) ;
 int nfs41_lookup (TYPE_4__*,TYPE_15__*,TYPE_7__*,int *,TYPE_5__*,int *,int *) ;
 int nfs41_root_create (int ,int ,scalar_t__,scalar_t__,TYPE_4__**) ;
 int nfs41_root_deref (TYPE_4__*) ;
 int nfs41_root_mount_addrs (TYPE_4__*,int *,int ,int ,TYPE_6__**) ;
 int nfs41_root_ref (TYPE_4__*) ;
 int nfs41_server_resolve (int ,int,int *) ;
 int nfs41_superblock_fs_attributes (int ,int *) ;
 scalar_t__ strlen (int ) ;

__attribute__((used)) static int handle_mount(nfs41_upcall *upcall)
{
    int status;
    mount_upcall_args *args = &upcall->args.mount;
    nfs41_abs_path path;
    multi_addr4 addrs;
    nfs41_root *root;
    nfs41_client *client;
    nfs41_path_fh file;


    status = nfs41_server_resolve(args->hostname, 2049, &addrs);
    if (status) {
        eprintf("nfs41_server_resolve() failed with %d\n", status);
        goto out;
    }

    if (upcall->root_ref != INVALID_HANDLE_VALUE) {


        root = upcall->root_ref;
    } else {

        status = nfs41_root_create(args->hostname, args->sec_flavor,
            args->wsize + WRITE_OVERHEAD, args->rsize + READ_OVERHEAD, &root);
        if (status) {
            eprintf("nfs41_root_create() failed %d\n", status);
            goto out;
        }
        root->uid = upcall->uid;
        root->gid = upcall->gid;
    }


    status = nfs41_root_mount_addrs(root, &addrs, 0, 0, &client);
    if (status) {
        eprintf("nfs41_root_mount_addrs() failed with %d\n", status);
        goto out_err;
    }


    InitializeSRWLock(&path.lock);
    if (FAILED(StringCchCopyA(path.path, NFS41_MAX_PATH_LEN, args->path))) {
        status = ERROR_FILENAME_EXCED_RANGE;
        goto out_err;
    }
    path.len = (unsigned short)strlen(path.path);


    status = nfs41_lookup(root, client->session,
        &path, ((void*)0), &file, ((void*)0), ((void*)0));
    if (status) {
        eprintf("nfs41_lookup('%s') failed with %d\n", path.path, status);
        status = ERROR_BAD_NETPATH;
        goto out_err;
    }

    nfs41_superblock_fs_attributes(file.fh.superblock, &args->FsAttrs);

    if (upcall->root_ref == INVALID_HANDLE_VALUE)
        nfs41_root_ref(root);
    upcall->root_ref = root;
    args->lease_time = client->session->lease_time;
out:
    return status;

out_err:
    if (upcall->root_ref == INVALID_HANDLE_VALUE)
        nfs41_root_deref(root);
    goto out;
}
