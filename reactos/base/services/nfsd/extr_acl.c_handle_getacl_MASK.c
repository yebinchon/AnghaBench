#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_7__ ;
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  count; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_2__ nfsacl41 ;
struct TYPE_18__ {int query; int /*<<< orphan*/ * sec_desc; scalar_t__ sec_desc_len; } ;
struct TYPE_13__ {TYPE_6__ getacl; } ;
struct TYPE_15__ {TYPE_4__* state_ref; TYPE_1__ args; } ;
typedef  TYPE_3__ nfs41_upcall ;
struct TYPE_16__ {int /*<<< orphan*/  type; int /*<<< orphan*/  file; int /*<<< orphan*/  session; } ;
typedef  TYPE_4__ nfs41_open_state ;
struct TYPE_17__ {char* owner; char* owner_group; TYPE_2__* acl; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_5__ nfs41_file_info ;
typedef  TYPE_6__ getacl_upcall_args ;
struct TYPE_19__ {int count; int* arr; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_7__ bitmap4 ;
typedef  int /*<<< orphan*/  SECURITY_DESCRIPTOR ;
typedef  int /*<<< orphan*/ * PSID ;
typedef  int /*<<< orphan*/ * PACL ;
typedef  char* LPSTR ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  ACLLVL ; 
 int DACL_SECURITY_INFORMATION ; 
 int ERROR_INSUFFICIENT_BUFFER ; 
 int ERROR_INTERNAL_ERROR ; 
 int ERROR_NOT_SUPPORTED ; 
 int ERROR_SUCCESS ; 
 int FATTR4_WORD0_ACL ; 
 int FATTR4_WORD1_OWNER ; 
 int FATTR4_WORD1_OWNER_GROUP ; 
 int GROUP_SECURITY_INFORMATION ; 
 int FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*) ; 
 int NFS4_OPAQUE_LIMIT ; 
 int OWNER_SECURITY_INFORMATION ; 
 int /*<<< orphan*/  SECURITY_DESCRIPTOR_REVISION ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ ***) ; 
 int /*<<< orphan*/  FUNC7 (char*,char**) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC12 (scalar_t__) ; 
 int FUNC13 (scalar_t__*,int /*<<< orphan*/ **,char*) ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_7__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC16(nfs41_upcall *upcall)
{
    int status = ERROR_NOT_SUPPORTED;
    getacl_upcall_args *args = &upcall->args.getacl;
    nfs41_open_state *state = upcall->state_ref;
    nfs41_file_info info = { 0 };
    bitmap4 attr_request = { 0 };
    LPSTR domain = NULL;
    SECURITY_DESCRIPTOR sec_desc;
    PACL dacl = NULL;
    PSID *sids = NULL;
    PSID osid = NULL, gsid = NULL;
    DWORD sid_len;
    char owner[NFS4_OPAQUE_LIMIT], group[NFS4_OPAQUE_LIMIT];
    nfsacl41 acl = { 0 };

    // need to cache owner/group information XX
    attr_request.count = 2;
    attr_request.arr[1] = FATTR4_WORD1_OWNER | FATTR4_WORD1_OWNER_GROUP;
    if (args->query & DACL_SECURITY_INFORMATION) {
        info.acl = &acl;
        attr_request.arr[0] |= FATTR4_WORD0_ACL;
    }
    info.owner = owner;
    info.owner_group = group;
    status = FUNC14(state->session, &state->file, &attr_request, &info);
    if (status) {
        FUNC9("handle_getacl: nfs41_cached_getattr() failed with %d\n", 
                status);
        goto out;
    }

    status = FUNC1(&sec_desc, 
                                          SECURITY_DESCRIPTOR_REVISION);
    if (!status) {
        status = FUNC0();
        FUNC9("handle_getacl: InitializeSecurityDescriptor failed with %d\n", 
                status);
        goto out;
    }
     /* can't (re)use the same sid variable for both owner and group sids 
      * because security descriptor is created in absolute-form and it just
      * stores pointers to the sids. thus each owner and group needs its own
      * memory. free them after creating self-relative security descriptor. 
      */
    if (args->query & OWNER_SECURITY_INFORMATION) {
        // parse user@domain. currently ignoring domain part XX
        FUNC7(info.owner, &domain);
        FUNC8(ACLLVL, "handle_getacl: OWNER_SECURITY_INFORMATION: for user=%s "
                "domain=%s\n", info.owner, domain?domain:"<null>");
        sid_len = 0;
        status = FUNC13(&sid_len, &osid, info.owner);
        if (status)
            goto out;
        status = FUNC5(&sec_desc, osid, TRUE);
        if (!status) {
            status = FUNC0();
            FUNC9("handle_getacl: SetSecurityDescriptorOwner failed with "
                    "%d\n", status);
            goto out;
        }
    }
    if (args->query & GROUP_SECURITY_INFORMATION) {
        FUNC7(info.owner_group, &domain);
        FUNC8(ACLLVL, "handle_getacl: GROUP_SECURITY_INFORMATION: for %s "
                "domain=%s\n", info.owner_group, domain?domain:"<null>");
        sid_len = 0;
        status = FUNC13(&sid_len, &gsid, info.owner_group);
        if (status)
            goto out;
        status = FUNC4(&sec_desc, gsid, TRUE);
        if (!status) {
            status = FUNC0();
            FUNC9("handle_getacl: SetSecurityDescriptorGroup failed with "
                    "%d\n", status);
            goto out;
        }
    }
    if (args->query & DACL_SECURITY_INFORMATION) {
        FUNC8(ACLLVL, "handle_getacl: DACL_SECURITY_INFORMATION\n");
        status = FUNC6(info.acl, state->type, &dacl, &sids);
        if (status)
            goto out;
        status = FUNC3(&sec_desc, TRUE, dacl, TRUE);
        if (!status) {
            status = FUNC0();
            FUNC9("handle_getacl: SetSecurityDescriptorDacl failed with "
                    "%d\n", status);
            goto out;
        }
    }

    args->sec_desc_len = 0;
    status = FUNC2(&sec_desc, args->sec_desc, &args->sec_desc_len);
    if (status) {
        status = ERROR_INTERNAL_ERROR;
        goto out;
    }
    status = FUNC0();
    if (status != ERROR_INSUFFICIENT_BUFFER) {
        FUNC9("handle_getacl: MakeSelfRelativeSD failes with %d\n", status);
        goto out;
    }
    args->sec_desc = FUNC12(args->sec_desc_len);
    if (args->sec_desc == NULL) {
        status = FUNC0();
        goto out;
    }
    status = FUNC2(&sec_desc, args->sec_desc, &args->sec_desc_len);
    if (!status) {
        status = FUNC0();
        FUNC9("handle_getacl: MakeSelfRelativeSD failes with %d\n", status);
        FUNC10(args->sec_desc);
        goto out;
    } else status = ERROR_SUCCESS;

out:
    if (args->query & OWNER_SECURITY_INFORMATION) {
        if (osid) FUNC10(osid);
    }
    if (args->query & GROUP_SECURITY_INFORMATION) {
        if (gsid) FUNC10(gsid);
    }
    if (args->query & DACL_SECURITY_INFORMATION) {
        if (sids) FUNC11(sids, info.acl->count);
        FUNC10(dacl);
        FUNC15(info.acl);
    }
    return status;
}