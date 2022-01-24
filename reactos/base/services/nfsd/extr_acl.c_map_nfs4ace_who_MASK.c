#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  SID_NAME_USE ;
typedef  scalar_t__ PSID ;
typedef  char* LPSTR ;
typedef  int DWORD ;

/* Variables and functions */
 char* ACE4_GROUP ; 
 char* ACE4_NOBODY ; 
 char* ACE4_OWNER ; 
 int /*<<< orphan*/  ACLLVL ; 
 int ERROR_INSUFFICIENT_BUFFER ; 
 int ERROR_INTERNAL_ERROR ; 
 int ERROR_SUCCESS ; 
 scalar_t__ FUNC0 (scalar_t__,scalar_t__) ; 
 int FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ *,scalar_t__,char*,int*,char*,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (scalar_t__,char*) ; 
 char* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int) ; 
 int FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,int) ; 

__attribute__((used)) static int FUNC11(PSID sid, PSID owner_sid, PSID group_sid, char *who_out, char *domain)
{
    int status = ERROR_INTERNAL_ERROR;
    DWORD size = 0, tmp_size = 0;
    SID_NAME_USE sid_type;
    LPSTR tmp_buf = NULL, who = NULL;

    /* for ace mapping, we want to map owner's sid into "owner@" 
     * but for set_owner attribute we want to map owner into a user name
     * same applies to group
     */
    status = 0;
    if (owner_sid) {
        if (FUNC0(sid, owner_sid)) {
            FUNC3(ACLLVL, "map_nfs4ace_who: this is owner's sid\n");
            FUNC8(who_out, ACE4_OWNER, FUNC9(ACE4_OWNER)+1); 
            return ERROR_SUCCESS;
        }
    }
    if (group_sid) {
        if (FUNC0(sid, group_sid)) {
            FUNC3(ACLLVL, "map_nfs4ace_who: this is group's sid\n");
            FUNC8(who_out, ACE4_GROUP, FUNC9(ACE4_GROUP)+1); 
            return ERROR_SUCCESS;
        }
    }
    status = FUNC6(sid, who_out);
    if (status) {
        if (!FUNC10(who_out, ACE4_NOBODY, FUNC9(ACE4_NOBODY))) {
            size = (DWORD)FUNC9(ACE4_NOBODY);
            goto add_domain;
        }
        else
            return ERROR_SUCCESS;
    }

    status = FUNC2(NULL, sid, who, &size, tmp_buf, 
        &tmp_size, &sid_type);
    FUNC3(ACLLVL, "map_nfs4ace_who: LookupAccountSid returned %d GetLastError "
            "%d name len %d domain len %d\n", status, FUNC1(), 
            size, tmp_size); 
    if (status)
        return ERROR_INTERNAL_ERROR;
    status = FUNC1();
    if (status != ERROR_INSUFFICIENT_BUFFER)
        return ERROR_INTERNAL_ERROR;
    who = FUNC7(size);
    if (who == NULL) {
        status = FUNC1();
        goto out;
    }
    tmp_buf = FUNC7(tmp_size);
    if (tmp_buf == NULL)
        goto out_free_who;
    status = FUNC2(NULL, sid, who, &size, tmp_buf, 
                                &tmp_size, &sid_type);
    FUNC5(tmp_buf);
    if (!status) {
        FUNC4("map_nfs4ace_who: LookupAccountSid failed with %d\n", 
                FUNC1());
        goto out_free_who;
    }
    FUNC8(who_out, who, size);
add_domain:
    FUNC8(who_out+size, "@", sizeof(char));
    FUNC8(who_out+size+1, domain, FUNC9(domain)+1);
    FUNC3(ACLLVL, "map_nfs4ace_who: who=%s\n", who_out);
    if (who) FUNC5(who);
    status = ERROR_SUCCESS;
out:
    return status;
out_free_who:
    FUNC5(who);
    status = FUNC1();
    goto out;
}