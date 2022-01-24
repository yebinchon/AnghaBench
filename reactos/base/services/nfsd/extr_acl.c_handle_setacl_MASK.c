#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  stateid_arg ;
struct TYPE_14__ {int query; int /*<<< orphan*/  ctime; int /*<<< orphan*/  sec_desc; } ;
typedef  TYPE_3__ setacl_upcall_args ;
struct TYPE_15__ {int /*<<< orphan*/  aces; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_4__ nfsacl41 ;
struct TYPE_12__ {TYPE_3__ setacl; } ;
struct TYPE_16__ {TYPE_6__* state_ref; TYPE_1__ args; } ;
typedef  TYPE_5__ nfs41_upcall ;
struct TYPE_17__ {int /*<<< orphan*/  file; int /*<<< orphan*/  session; int /*<<< orphan*/  type; } ;
typedef  TYPE_6__ nfs41_open_state ;
struct TYPE_13__ {int count; int /*<<< orphan*/ * arr; } ;
struct TYPE_18__ {char* owner; char* owner_group; int /*<<< orphan*/  change; TYPE_2__ attrmask; TYPE_4__* acl; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_7__ nfs41_file_info ;
typedef  int /*<<< orphan*/ * PSID ;
typedef  int /*<<< orphan*/  PACL ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  ACLLVL ; 
 int DACL_SECURITY_INFORMATION ; 
 int ERROR_NOT_SUPPORTED ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FATTR4_WORD0_ACL ; 
 int /*<<< orphan*/  FATTR4_WORD1_OWNER ; 
 int /*<<< orphan*/  FATTR4_WORD1_OWNER_GROUP ; 
 int GROUP_SECURITY_INFORMATION ; 
 int FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int NFS4_OPAQUE_LIMIT ; 
 int /*<<< orphan*/  OPEN_DELEGATE_WRITE ; 
 int OWNER_SECURITY_INFORMATION ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  localdomain_name ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_6__*,int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int FUNC13 (int,int) ; 

__attribute__((used)) static int FUNC14(nfs41_upcall *upcall)
{
    int status = ERROR_NOT_SUPPORTED;
    setacl_upcall_args *args = &upcall->args.setacl;
    nfs41_open_state *state = upcall->state_ref;
    nfs41_file_info info = { 0 };
    stateid_arg stateid;
    nfsacl41 nfs4_acl = { 0 };
    PSID sid = NULL, gsid = NULL;
    BOOL sid_default, gsid_default;

    if (args->query & OWNER_SECURITY_INFORMATION) {
        char owner[NFS4_OPAQUE_LIMIT];
        FUNC4(ACLLVL, "handle_setacl: OWNER_SECURITY_INFORMATION\n");
        status = FUNC3(args->sec_desc, &sid, &sid_default);
        if (!status) {
            status = FUNC0();
            FUNC5("GetSecurityDescriptorOwner failed with %d\n", status);
            goto out;
        }
        info.owner = owner;
        status = FUNC8(sid, NULL, NULL, info.owner, localdomain_name);
        if (status)
            goto out;
        else {
            info.attrmask.arr[1] |= FATTR4_WORD1_OWNER;
            info.attrmask.count = 2;
        }
    }
    if (args->query & GROUP_SECURITY_INFORMATION) {
        char group[NFS4_OPAQUE_LIMIT];
        FUNC4(ACLLVL, "handle_setacl: GROUP_SECURITY_INFORMATION\n");
        status = FUNC2(args->sec_desc, &sid, &sid_default);
        if (!status) {
            status = FUNC0();
            FUNC5("GetSecurityDescriptorOwner failed with %d\n", status);
            goto out;
        }
        info.owner_group = group;
        status = FUNC8(sid, NULL, NULL, info.owner_group, 
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
        FUNC4(ACLLVL, "handle_setacl: DACL_SECURITY_INFORMATION\n");
        status = FUNC1(args->sec_desc, &dacl_present,
                                            &acl, &dacl_default);
        if (!status) {
            status = FUNC0();
            FUNC5("GetSecurityDescriptorDacl failed with %d\n", status);
            goto out;
        }
        status = FUNC3(args->sec_desc, &sid, &sid_default);
        if (!status) {
            status = FUNC0();
            FUNC5("GetSecurityDescriptorOwner failed with %d\n", status);
            goto out;
        }
        status = FUNC2(args->sec_desc, &gsid, &gsid_default);
        if (!status) {
            status = FUNC0();
            FUNC5("GetSecurityDescriptorOwner failed with %d\n", status);
            goto out;
        }
        status = FUNC7(acl, sid, gsid, &nfs4_acl, state->type, 
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

    /* break read delegations before SETATTR */
    FUNC9(state->session, &state->file,
        OPEN_DELEGATE_WRITE, FALSE);

    FUNC10(state, &stateid);
    status = FUNC11(state->session, &state->file, &stateid, &info);
    if (status) {
        FUNC4(ACLLVL, "handle_setacl: nfs41_setattr() failed with error %s.\n",
                FUNC12(status));
        status = FUNC13(status, ERROR_NOT_SUPPORTED);
    }
    args->ctime = info.change;
    if (args->query & DACL_SECURITY_INFORMATION)
        FUNC6(nfs4_acl.aces);
out:
    return status;
}