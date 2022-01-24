#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int count; TYPE_6__* aces; scalar_t__ flag; } ;
typedef  TYPE_1__ nfsacl41 ;
typedef  int /*<<< orphan*/  nfsace4 ;
struct TYPE_12__ {int /*<<< orphan*/  who; int /*<<< orphan*/  acemask; scalar_t__ aceflag; void* acetype; } ;
struct TYPE_11__ {int AceType; int /*<<< orphan*/  AceFlags; int /*<<< orphan*/  AceSize; } ;
struct TYPE_10__ {int AceCount; int /*<<< orphan*/  AclSize; } ;
typedef  int /*<<< orphan*/  PSID ;
typedef  scalar_t__ PBYTE ;
typedef  TYPE_2__* PACL ;
typedef  TYPE_3__* PACE_HEADER ;
typedef  int /*<<< orphan*/ * PACCESS_MASK ;
typedef  int /*<<< orphan*/  ACE_HEADER ;
typedef  int /*<<< orphan*/  ACCESS_MASK ;

/* Variables and functions */
 int ACCESS_ALLOWED_ACE_TYPE ; 
 int ACCESS_DENIED_ACE_TYPE ; 
 void* ACE4_ACCESS_ALLOWED_ACE_TYPE ; 
 void* ACE4_ACCESS_DENIED_ACE_TYPE ; 
 int /*<<< orphan*/  ACE4_ALL_DIR ; 
 int /*<<< orphan*/  ACE4_ALL_FILE ; 
 int /*<<< orphan*/  ACE4_EVERYONE ; 
 int /*<<< orphan*/  ACLLVL ; 
 int ERROR_NOT_SUPPORTED ; 
 int ERROR_SUCCESS ; 
 int FUNC0 (TYPE_2__*,int,TYPE_3__**) ; 
 int FUNC1 () ; 
 int NF4DIR ; 
 void* FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC8 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int,unsigned char*,unsigned char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(PACL acl, PSID sid, PSID gsid, nfsacl41 *nfs4_acl, 
                                int file_type, char *domain)
{
    int status;
    if (acl == NULL) {
        FUNC3(ACLLVL, "this is a NULL dacl: all access to an object\n");
        nfs4_acl->count = 1;
        nfs4_acl->aces = FUNC2(1, sizeof(nfsace4));
        if (nfs4_acl->aces == NULL) {
            status = FUNC1();
            goto out;
        }
        nfs4_acl->flag = 0;
        FUNC9(nfs4_acl->aces->who, ACE4_EVERYONE, FUNC11(ACE4_EVERYONE)+1);
        nfs4_acl->aces->acetype = ACE4_ACCESS_ALLOWED_ACE_TYPE;
        if (file_type == NF4DIR)
            nfs4_acl->aces->acemask = ACE4_ALL_DIR;
        else
            nfs4_acl->aces->acemask = ACE4_ALL_FILE;
        nfs4_acl->aces->aceflag = 0;
    } else {
        int i;
        PACE_HEADER ace;
        PBYTE tmp_pointer;

        FUNC3(ACLLVL, "NON-NULL dacl with %d ACEs\n", acl->AceCount);
        FUNC10(3, (unsigned char *)"ACL\n", 
                            (unsigned char *)acl, acl->AclSize);
        nfs4_acl->count = acl->AceCount;
        nfs4_acl->aces = FUNC2(nfs4_acl->count, sizeof(nfsace4));
        if (nfs4_acl->aces == NULL) {
            status = FUNC1();
            goto out;
        }
        nfs4_acl->flag = 0;
        for (i = 0; i < acl->AceCount; i++) {
            status = FUNC0(acl, i, &ace);
            if (!status) {
                status = FUNC1();
                FUNC4("map_dacl_2_nfs4acl: GetAce failed with %d\n", status);
                goto out_free;
            }
            tmp_pointer = (PBYTE)ace;
            FUNC10(3, (unsigned char *)"ACE\n", 
                                    (unsigned char *)ace, ace->AceSize); 
            FUNC3(ACLLVL, "ACE TYPE: %x\n", ace->AceType);
            if (ace->AceType == ACCESS_ALLOWED_ACE_TYPE)
                nfs4_acl->aces[i].acetype = ACE4_ACCESS_ALLOWED_ACE_TYPE;
            else if (ace->AceType == ACCESS_DENIED_ACE_TYPE)
                nfs4_acl->aces[i].acetype = ACE4_ACCESS_DENIED_ACE_TYPE;
            else {
                FUNC4("map_dacl_2_nfs4acl: unsupported ACE type %d\n",
                    ace->AceType);
                status = ERROR_NOT_SUPPORTED;
                goto out_free;
            }

            FUNC6(ace->AceFlags, &nfs4_acl->aces[i].aceflag);            
            FUNC7(*(PACCESS_MASK)(ace + 1), file_type, 
                        &nfs4_acl->aces[i].acemask);

            tmp_pointer += sizeof(ACCESS_MASK) + sizeof(ACE_HEADER);
            status = FUNC8(tmp_pointer, sid, gsid, nfs4_acl->aces[i].who, 
                                     domain);
            if (status)
                goto out_free;
        }
    }
    status = ERROR_SUCCESS;
out:
    return status;
out_free:
    FUNC5(nfs4_acl->aces);
    goto out;
}