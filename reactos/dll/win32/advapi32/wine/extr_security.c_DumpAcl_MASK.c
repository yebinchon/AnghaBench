#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int WORD ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  ULONG ;
struct TYPE_5__ {int AceCount; } ;
typedef  TYPE_1__* PACL ;
typedef  int /*<<< orphan*/  LPVOID ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  SDDL_AUTO_INHERITED ; 
 int /*<<< orphan*/  SDDL_AUTO_INHERIT_REQ ; 
 int /*<<< orphan*/  SDDL_PROTECTED ; 
 scalar_t__ TRUE ; 

__attribute__((used)) static BOOL FUNC4(PACL pacl, WCHAR **pwptr, ULONG *plen, BOOL protected, BOOL autoInheritReq, BOOL autoInherited)
{
    WORD count;
    int i;

    if (protected)
        FUNC1(SDDL_PROTECTED, -1, pwptr, plen);
    if (autoInheritReq)
        FUNC1(SDDL_AUTO_INHERIT_REQ, -1, pwptr, plen);
    if (autoInherited)
        FUNC1(SDDL_AUTO_INHERITED, -1, pwptr, plen);

    if (pacl == NULL)
        return TRUE;

    if (!FUNC3(pacl))
        return FALSE;

    count = pacl->AceCount;
    for (i = 0; i < count; i++)
    {
        LPVOID ace;
        if (!FUNC2(pacl, i, &ace))
            return FALSE;
        if (!FUNC0(ace, pwptr, plen))
            return FALSE;
    }

    return TRUE;
}