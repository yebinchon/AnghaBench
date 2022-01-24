#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  ULONG ;
struct TYPE_6__ {int AceType; int AceFlags; } ;
struct TYPE_8__ {int /*<<< orphan*/  SidStart; int /*<<< orphan*/  Mask; TYPE_1__ Header; } ;
struct TYPE_7__ {scalar_t__ AceType; int AceSize; } ;
typedef  int /*<<< orphan*/  PSID ;
typedef  TYPE_2__* PACE_HEADER ;
typedef  TYPE_3__* LPVOID ;
typedef  int /*<<< orphan*/  BOOL ;
typedef  TYPE_3__ ACCESS_ALLOWED_ACE ;

/* Variables and functions */
#define  ACCESS_ALLOWED_ACE_TYPE 131 
#define  ACCESS_DENIED_ACE_TYPE 130 
 int CONTAINER_INHERIT_ACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int,char**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERROR_INVALID_ACL ; 
 int FAILED_ACCESS_ACE_FLAG ; 
 int /*<<< orphan*/  FALSE ; 
 int INHERITED_ACE ; 
 int INHERIT_ONLY_ACE ; 
 int NO_PROPAGATE_INHERIT_ACE ; 
 int OBJECT_INHERIT_ACE ; 
 char const* SDDL_ACCESS_ALLOWED ; 
 char const* SDDL_ACCESS_DENIED ; 
 char const* SDDL_ALARM ; 
 char const* SDDL_AUDIT ; 
 char const* SDDL_AUDIT_FAILURE ; 
 char const* SDDL_AUDIT_SUCCESS ; 
 char const* SDDL_CONTAINER_INHERIT ; 
 char const* SDDL_INHERITED ; 
 char const* SDDL_INHERIT_ONLY ; 
 char const* SDDL_NO_PROPAGATE ; 
 char const* SDDL_OBJECT_INHERIT ; 
 int SUCCESSFUL_ACCESS_ACE_FLAG ; 
#define  SYSTEM_ALARM_ACE_TYPE 129 
#define  SYSTEM_AUDIT_ACE_TYPE 128 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static BOOL FUNC4(LPVOID pace, WCHAR **pwptr, ULONG *plen)
{
    ACCESS_ALLOWED_ACE *piace; /* all the supported ACEs have the same memory layout */
    static const WCHAR openbr = '(';
    static const WCHAR closebr = ')';
    static const WCHAR semicolon = ';';

    if (((PACE_HEADER)pace)->AceType > SYSTEM_ALARM_ACE_TYPE || ((PACE_HEADER)pace)->AceSize < sizeof(ACCESS_ALLOWED_ACE))
    {
        FUNC3(ERROR_INVALID_ACL);
        return FALSE;
    }

    piace = pace;
    FUNC2(&openbr, 1, pwptr, plen);
    switch (piace->Header.AceType)
    {
        case ACCESS_ALLOWED_ACE_TYPE:
            FUNC2(SDDL_ACCESS_ALLOWED, -1, pwptr, plen);
            break;
        case ACCESS_DENIED_ACE_TYPE:
            FUNC2(SDDL_ACCESS_DENIED, -1, pwptr, plen);
            break;
        case SYSTEM_AUDIT_ACE_TYPE:
            FUNC2(SDDL_AUDIT, -1, pwptr, plen);
            break;
        case SYSTEM_ALARM_ACE_TYPE:
            FUNC2(SDDL_ALARM, -1, pwptr, plen);
            break;
    }
    FUNC2(&semicolon, 1, pwptr, plen);

    if (piace->Header.AceFlags & OBJECT_INHERIT_ACE)
        FUNC2(SDDL_OBJECT_INHERIT, -1, pwptr, plen);
    if (piace->Header.AceFlags & CONTAINER_INHERIT_ACE)
        FUNC2(SDDL_CONTAINER_INHERIT, -1, pwptr, plen);
    if (piace->Header.AceFlags & NO_PROPAGATE_INHERIT_ACE)
        FUNC2(SDDL_NO_PROPAGATE, -1, pwptr, plen);
    if (piace->Header.AceFlags & INHERIT_ONLY_ACE)
        FUNC2(SDDL_INHERIT_ONLY, -1, pwptr, plen);
    if (piace->Header.AceFlags & INHERITED_ACE)
        FUNC2(SDDL_INHERITED, -1, pwptr, plen);
    if (piace->Header.AceFlags & SUCCESSFUL_ACCESS_ACE_FLAG)
        FUNC2(SDDL_AUDIT_SUCCESS, -1, pwptr, plen);
    if (piace->Header.AceFlags & FAILED_ACCESS_ACE_FLAG)
        FUNC2(SDDL_AUDIT_FAILURE, -1, pwptr, plen);
    FUNC2(&semicolon, 1, pwptr, plen);
    FUNC0(piace->Mask, pwptr, plen);
    FUNC2(&semicolon, 1, pwptr, plen);
    /* objects not supported */
    FUNC2(&semicolon, 1, pwptr, plen);
    /* objects not supported */
    FUNC2(&semicolon, 1, pwptr, plen);
    if (!FUNC1((PSID)&piace->SidStart, pwptr, plen))
        return FALSE;
    FUNC2(&closebr, 1, pwptr, plen);
    return TRUE;
}