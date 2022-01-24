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
typedef  int /*<<< orphan*/  WELL_KNOWN_SID_TYPE ;
typedef  int /*<<< orphan*/ * PSID ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  ACLLVL ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*) ; 
 int ERROR_INSUFFICIENT_BUFFER ; 
 int ERROR_INTERNAL_ERROR ; 
 int ERROR_SUCCESS ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (scalar_t__) ; 

__attribute__((used)) static int FUNC6(WELL_KNOWN_SID_TYPE type, PSID *sid, 
                             DWORD *sid_len)
{
    int status;
    *sid_len = 0;
    *sid = NULL;

    status = FUNC0(type, NULL, *sid, sid_len);
    FUNC2(ACLLVL, "create_unknownsid: CreateWellKnownSid type %d returned %d "
            "GetLastError %d sid len %d needed\n", type, status, 
            FUNC1(), *sid_len); 
    if (status) 
        return ERROR_INTERNAL_ERROR;
    status = FUNC1();
    if (status != ERROR_INSUFFICIENT_BUFFER) 
        return status;
    *sid = FUNC5(*sid_len);
    if (*sid == NULL) 
        return ERROR_INSUFFICIENT_BUFFER;
    status = FUNC0(type, NULL, *sid, sid_len);
    if (status) 
        return ERROR_SUCCESS;
    FUNC4(*sid);
    status = FUNC1();
    FUNC3("create_unknownsid: CreateWellKnownSid failed with %d\n", status);
    return status;
}