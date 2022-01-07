
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int stateid_arg ;
struct TYPE_14__ {int query; int ctime; int sec_desc; } ;
typedef TYPE_3__ setacl_upcall_args ;
struct TYPE_15__ {int aces; int member_0; } ;
typedef TYPE_4__ nfsacl41 ;
struct TYPE_12__ {TYPE_3__ setacl; } ;
struct TYPE_16__ {TYPE_6__* state_ref; TYPE_1__ args; } ;
typedef TYPE_5__ nfs41_upcall ;
struct TYPE_17__ {int file; int session; int type; } ;
typedef TYPE_6__ nfs41_open_state ;
struct TYPE_13__ {int count; int * arr; } ;
struct TYPE_18__ {char* owner; char* owner_group; int change; TYPE_2__ attrmask; TYPE_4__* acl; int member_0; } ;
typedef TYPE_7__ nfs41_file_info ;
typedef int * PSID ;
typedef int PACL ;
typedef int BOOL ;


 int ACLLVL ;
 int DACL_SECURITY_INFORMATION ;
 int ERROR_NOT_SUPPORTED ;
 int FALSE ;
 int FATTR4_WORD0_ACL ;
 int FATTR4_WORD1_OWNER ;
 int FATTR4_WORD1_OWNER_GROUP ;
 int GROUP_SECURITY_INFORMATION ;
 int GetLastError () ;
 int GetSecurityDescriptorDacl (int ,int *,int *,int *) ;
 int GetSecurityDescriptorGroup (int ,int **,int *) ;
 int GetSecurityDescriptorOwner (int ,int **,int *) ;
 int NFS4_OPAQUE_LIMIT ;
 int OPEN_DELEGATE_WRITE ;
 int OWNER_SECURITY_INFORMATION ;
 int dprintf (int ,char*,...) ;
 int eprintf (char*,int) ;
 int free (int ) ;
 int localdomain_name ;
 int map_dacl_2_nfs4acl (int ,int *,int *,TYPE_4__*,int ,int ) ;
 int map_nfs4ace_who (int *,int *,int *,char*,int ) ;
 int nfs41_delegation_return (int ,int *,int ,int ) ;
 int nfs41_open_stateid_arg (TYPE_6__*,int *) ;
 int nfs41_setattr (int ,int *,int *,TYPE_7__*) ;
 int nfs_error_string (int) ;
 int nfs_to_windows_error (int,int) ;

__attribute__((used)) static int handle_setacl(nfs41_upcall *upcall)
{
    int status = ERROR_NOT_SUPPORTED;
    setacl_upcall_args *args = &upcall->args.setacl;
    nfs41_open_state *state = upcall->state_ref;
    nfs41_file_info info = { 0 };
    stateid_arg stateid;
    nfsacl41 nfs4_acl = { 0 };
    PSID sid = ((void*)0), gsid = ((void*)0);
    BOOL sid_default, gsid_default;

    if (args->query & OWNER_SECURITY_INFORMATION) {
        char owner[NFS4_OPAQUE_LIMIT];
        dprintf(ACLLVL, "handle_setacl: OWNER_SECURITY_INFORMATION\n");
        status = GetSecurityDescriptorOwner(args->sec_desc, &sid, &sid_default);
        if (!status) {
            status = GetLastError();
            eprintf("GetSecurityDescriptorOwner failed with %d\n", status);
            goto out;
        }
        info.owner = owner;
        status = map_nfs4ace_who(sid, ((void*)0), ((void*)0), info.owner, localdomain_name);
        if (status)
            goto out;
        else {
            info.attrmask.arr[1] |= FATTR4_WORD1_OWNER;
            info.attrmask.count = 2;
        }
    }
    if (args->query & GROUP_SECURITY_INFORMATION) {
        char group[NFS4_OPAQUE_LIMIT];
        dprintf(ACLLVL, "handle_setacl: GROUP_SECURITY_INFORMATION\n");
        status = GetSecurityDescriptorGroup(args->sec_desc, &sid, &sid_default);
        if (!status) {
            status = GetLastError();
            eprintf("GetSecurityDescriptorOwner failed with %d\n", status);
            goto out;
        }
        info.owner_group = group;
        status = map_nfs4ace_who(sid, ((void*)0), ((void*)0), info.owner_group,
                                 localdomain_name);
        if (status)
            goto out;
        else {
            info.attrmask.arr[1] |= FATTR4_WORD1_OWNER_GROUP;
            info.attrmask.count = 2;
        }
    }
    if (args->query & DACL_SECURITY_INFORMATION) {
        BOOL dacl_present, dacl_default;
        PACL acl;
        dprintf(ACLLVL, "handle_setacl: DACL_SECURITY_INFORMATION\n");
        status = GetSecurityDescriptorDacl(args->sec_desc, &dacl_present,
                                            &acl, &dacl_default);
        if (!status) {
            status = GetLastError();
            eprintf("GetSecurityDescriptorDacl failed with %d\n", status);
            goto out;
        }
        status = GetSecurityDescriptorOwner(args->sec_desc, &sid, &sid_default);
        if (!status) {
            status = GetLastError();
            eprintf("GetSecurityDescriptorOwner failed with %d\n", status);
            goto out;
        }
        status = GetSecurityDescriptorGroup(args->sec_desc, &gsid, &gsid_default);
        if (!status) {
            status = GetLastError();
            eprintf("GetSecurityDescriptorOwner failed with %d\n", status);
            goto out;
        }
        status = map_dacl_2_nfs4acl(acl, sid, gsid, &nfs4_acl, state->type,
                                    localdomain_name);
        if (status)
            goto out;
        else {
            info.acl = &nfs4_acl;
            info.attrmask.arr[0] |= FATTR4_WORD0_ACL;
            if (!info.attrmask.count)
                info.attrmask.count = 1;
        }
    }


    nfs41_delegation_return(state->session, &state->file,
        OPEN_DELEGATE_WRITE, FALSE);

    nfs41_open_stateid_arg(state, &stateid);
    status = nfs41_setattr(state->session, &state->file, &stateid, &info);
    if (status) {
        dprintf(ACLLVL, "handle_setacl: nfs41_setattr() failed with error %s.\n",
                nfs_error_string(status));
        status = nfs_to_windows_error(status, ERROR_NOT_SUPPORTED);
    }
    args->ctime = info.change;
    if (args->query & DACL_SECURITY_INFORMATION)
        free(nfs4_acl.aces);
out:
    return status;
}
