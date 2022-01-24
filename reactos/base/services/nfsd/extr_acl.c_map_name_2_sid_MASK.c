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
typedef  int /*<<< orphan*/ * PSID ;
typedef  int /*<<< orphan*/ * LPSTR ;
typedef  int /*<<< orphan*/  LPCSTR ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  ACLLVL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
#define  ERROR_INSUFFICIENT_BUFFER 129 
 int ERROR_INTERNAL_ERROR ; 
#define  ERROR_NONE_MAPPED 128 
 int ERROR_SUCCESS ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  WinNullSid ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(DWORD *sid_len, PSID *sid, LPCSTR name)
{
    int status = ERROR_INTERNAL_ERROR;
    SID_NAME_USE sid_type;
    LPSTR tmp_buf = NULL;
    DWORD tmp = 0;

    status = FUNC4(NULL, name, NULL, sid_len, NULL, &tmp, &sid_type);
    FUNC6(ACLLVL, "map_name_2_sid: LookupAccountName for %s returned %d "
            "GetLastError %d name len %d domain len %d\n", name, status, 
            FUNC1(), *sid_len, tmp); 
    if (status)
        return ERROR_INTERNAL_ERROR;

    status = FUNC1();
    switch(status) {
    case ERROR_INSUFFICIENT_BUFFER:
        *sid = FUNC9(*sid_len);
        if (*sid == NULL) {
            status = FUNC1();
            goto out;
        }
        tmp_buf = (LPSTR) FUNC9(tmp);
        if (tmp_buf == NULL)
            goto out_free_sid;
        status = FUNC4(NULL, name, *sid, sid_len, tmp_buf, 
                                    &tmp, &sid_type);
        FUNC8(tmp_buf);
        if (!status) {
            FUNC7("map_name_2_sid: LookupAccountName for %s failed "
                    "with %d\n", name, FUNC1());
            goto out_free_sid;
        } else {
#ifdef DEBUG_ACLS
            LPSTR ssid = NULL;
            if (IsValidSid(*sid))
                if (ConvertSidToStringSidA(*sid, &ssid))
                    dprintf(1, "map_name_2_sid: sid_type = %d SID %s\n", 
                            sid_type, ssid);
                else
                    dprintf(1, "map_name_2_sid: ConvertSidToStringSidA failed "
                            "with %d\n", GetLastError());
            else
                dprintf(1, "map_name_2_sid: Invalid Sid ?\n");
            if (ssid) LocalFree(ssid);
#endif
        }
        status = ERROR_SUCCESS;
        break;
    case ERROR_NONE_MAPPED:
        status = FUNC5(WinNullSid, sid, sid_len);
        if (status)
            goto out_free_sid;
    }
out:
    return status;
out_free_sid:
    status = FUNC1();
    FUNC8(*sid);
    goto out;
}