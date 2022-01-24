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
typedef  scalar_t__ WELL_KNOWN_SID_TYPE ;
typedef  int /*<<< orphan*/  PSID ;

/* Variables and functions */
 int /*<<< orphan*/  ACE4_ANONYMOUS ; 
 int /*<<< orphan*/  ACE4_AUTHENTICATED ; 
 int /*<<< orphan*/  ACE4_BATCH ; 
 int /*<<< orphan*/  ACE4_DIALUP ; 
 int /*<<< orphan*/  ACE4_EVERYONE ; 
 int /*<<< orphan*/  ACE4_GROUP ; 
 int /*<<< orphan*/  ACE4_INTERACTIVE ; 
 int /*<<< orphan*/  ACE4_NETWORK ; 
 int /*<<< orphan*/  ACE4_NOBODY ; 
 int /*<<< orphan*/  ACE4_OWNER ; 
 int /*<<< orphan*/  ACE4_SERVICE ; 
 int /*<<< orphan*/  ACLLVL ; 
 int FALSE ; 
 int FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int TRUE ; 
#define  WinAnonymousSid 141 
#define  WinAuthenticatedUserSid 140 
#define  WinBatchSid 139 
#define  WinBuiltinUsersSid 138 
#define  WinCreatorGroupSid 137 
#define  WinCreatorOwnerSid 136 
#define  WinDialupSid 135 
#define  WinInteractiveSid 134 
#define  WinLocalServiceSid 133 
#define  WinNetworkServiceSid 132 
#define  WinNetworkSid 131 
#define  WinNullSid 130 
#define  WinServiceSid 129 
#define  WinWorldSid 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(PSID sid, char *who) 
{
    int status, i;
    for (i = 0; i < 78; i++) {
        status = FUNC0(sid, (WELL_KNOWN_SID_TYPE)i);
        if (!status) continue;
        else {
            FUNC1(ACLLVL, "WELL_KNOWN_SID_TYPE %d\n", i);
            switch((WELL_KNOWN_SID_TYPE)i) {
            case WinCreatorOwnerSid:
                FUNC2(who, ACE4_OWNER, FUNC3(ACE4_OWNER)+1); 
                return TRUE;
            case WinNullSid:
                FUNC2(who, ACE4_NOBODY, FUNC3(ACE4_NOBODY)+1); 
                return TRUE;
            case WinAnonymousSid:
                FUNC2(who, ACE4_ANONYMOUS, FUNC3(ACE4_ANONYMOUS)+1); 
                return TRUE;
            case WinWorldSid:
                FUNC2(who, ACE4_EVERYONE, FUNC3(ACE4_EVERYONE)+1); 
                return TRUE;
            case WinCreatorGroupSid:
            case WinBuiltinUsersSid:
                FUNC2(who, ACE4_GROUP, FUNC3(ACE4_GROUP)+1); 
                return TRUE;
            case WinAuthenticatedUserSid:
                FUNC2(who, ACE4_AUTHENTICATED, FUNC3(ACE4_AUTHENTICATED)+1); 
                return TRUE;
            case WinDialupSid:
                FUNC2(who, ACE4_DIALUP, FUNC3(ACE4_DIALUP)+1); 
                return TRUE;
            case WinNetworkSid:
                FUNC2(who, ACE4_NETWORK, FUNC3(ACE4_NETWORK)+1); 
                return TRUE;
            case WinBatchSid:
                FUNC2(who, ACE4_BATCH, FUNC3(ACE4_BATCH)+1); 
                return TRUE;
            case WinInteractiveSid:
                FUNC2(who, ACE4_INTERACTIVE, FUNC3(ACE4_INTERACTIVE)+1); 
                return TRUE;
            case WinNetworkServiceSid:
            case WinLocalServiceSid:
            case WinServiceSid:
                FUNC2(who, ACE4_SERVICE, FUNC3(ACE4_SERVICE)+1); 
                return TRUE;
            default: return FALSE;
            }
        }
    }
    return FALSE;
}