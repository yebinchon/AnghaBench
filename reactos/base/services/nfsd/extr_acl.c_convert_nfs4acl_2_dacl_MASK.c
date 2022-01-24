#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint32_t ;
struct TYPE_5__ {int count; TYPE_1__* aces; } ;
typedef  TYPE_2__ nfsacl41 ;
struct TYPE_4__ {scalar_t__ acetype; int /*<<< orphan*/  acemask; int /*<<< orphan*/  who; } ;
typedef  int /*<<< orphan*/  PSID ;
typedef  int /*<<< orphan*/ * PACL ;
typedef  char* LPSTR ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BOOLEAN ;
typedef  int /*<<< orphan*/  ACL ;
typedef  int /*<<< orphan*/  ACCESS_MASK ;
typedef  int /*<<< orphan*/  ACCESS_ALLOWED_ACE ;

/* Variables and functions */
 scalar_t__ ACE4_ACCESS_ALLOWED_ACE_TYPE ; 
 scalar_t__ ACE4_ACCESS_DENIED_ACE_TYPE ; 
 int /*<<< orphan*/  ACLLVL ; 
 int /*<<< orphan*/  ACL_REVISION ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int ERROR_INTERNAL_ERROR ; 
 int ERROR_NOT_SUPPORTED ; 
 int ERROR_SUCCESS ; 
 int FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,size_t) ; 
 void* FUNC10 (int) ; 
 int FUNC11 (int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(nfsacl41 *acl, int file_type, 
                                  PACL *dacl_out, PSID **sids_out)
{
    int status = ERROR_NOT_SUPPORTED, size = 0;
    uint32_t i;
    DWORD sid_len;
    PSID *sids;
    PACL dacl;
    LPSTR domain = NULL;
    BOOLEAN flag;

    sids = FUNC10(acl->count * sizeof(PSID));
    if (sids == NULL) {
        status = FUNC2();
        goto out;
    }
    for (i = 0; i < acl->count; i++) {
        FUNC5(acl->aces[i].who, &domain);
        FUNC6(ACLLVL, "handle_getacl: for user=%s domain=%s\n", 
                acl->aces[i].who, domain?domain:"<null>");
        status = FUNC4(acl->aces[i].who, &sids[i], 
                                             &sid_len, &flag);
        if (status) {
            FUNC9(sids, i);
            goto out;
        }
        if (!flag) {
            status = FUNC11(&sid_len, &sids[i], acl->aces[i].who);
            if (status) {
                FUNC9(sids, i);
                goto out;
            }
        } 
        size += sid_len - sizeof(DWORD);
    }
    size += sizeof(ACL) + (sizeof(ACCESS_ALLOWED_ACE)*acl->count);
    size = (size + sizeof(DWORD) - 1) & 0xfffffffc; //align size on word boundry
    dacl = FUNC10(size);
    if (dacl == NULL)
        goto out_free_sids;
    
    if (FUNC3(dacl, size, ACL_REVISION)) {
        ACCESS_MASK mask;
        for (i = 0; i < acl->count; i++) {
            // nfs4 acemask should be exactly the same as file access mask
            mask = acl->aces[i].acemask;
            FUNC6(ACLLVL, "access mask %x ace type %s\n", mask, 
                acl->aces[i].acetype?"DENIED ACE":"ALLOWED ACE");
            if (acl->aces[i].acetype == ACE4_ACCESS_ALLOWED_ACE_TYPE) {
                status = FUNC0(dacl, ACL_REVISION, mask, sids[i]);
                if (!status) {
                    FUNC7("convert_nfs4acl_2_dacl: AddAccessAllowedAce failed "
                            "with %d\n", status);
                    goto out_free_dacl;
                }
                else status = ERROR_SUCCESS;
            } else if (acl->aces[i].acetype == ACE4_ACCESS_DENIED_ACE_TYPE) {
                status = FUNC1(dacl, ACL_REVISION, mask, sids[i]);
                if (!status) {
                    FUNC7("convert_nfs4acl_2_dacl: AddAccessDeniedAce failed "
                            "with %d\n", status);
                    goto out_free_dacl;
                }
                else status = ERROR_SUCCESS;
            } else {
                FUNC7("convert_nfs4acl_2_dacl: unknown acetype %d\n", 
                        acl->aces[i].acetype);
                status = ERROR_INTERNAL_ERROR;
                FUNC8(dacl);
                FUNC9(sids, acl->count);
                goto out;
            }
        }
    } else {
        FUNC7("convert_nfs4acl_2_dacl: InitializeAcl failed with %d\n", status);
        goto out_free_dacl;
    }
    status = ERROR_SUCCESS;
    *sids_out = sids;
    *dacl_out = dacl;
out:
    return status;
out_free_dacl:
    FUNC8(dacl);
out_free_sids:
    FUNC9(sids, acl->count);
    status = FUNC2();
    goto out;
}