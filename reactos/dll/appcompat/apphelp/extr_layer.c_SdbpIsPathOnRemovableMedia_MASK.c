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
typedef  char WCHAR ;
typedef  scalar_t__ ULONG ;
typedef  int* PCWSTR ;
typedef  int BOOL ;

/* Variables and functions */
 scalar_t__ DRIVE_CDROM ; 
 scalar_t__ DRIVE_REMOVABLE ; 
 int FALSE ; 
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int*) ; 
 int UNICODE_NULL ; 

BOOL FUNC3(PCWSTR Path)
{
    WCHAR tmp[] = { 'A',':','\\',0 };
    ULONG type;
    if (!Path || Path[0] == UNICODE_NULL)
    {
        FUNC1("Invalid argument\n");
        return FALSE;
    }
    switch (Path[1])
    {
    case L':':
        break;
    case L'\\':
        FUNC2("\"%S\" is a network path.\n", Path);
        return FALSE;
    default:
        FUNC2("\"%S\" not a full path we can operate on.\n", Path);
        return FALSE;
    }
    tmp[0] = Path[0];
    type = FUNC0(tmp);

    return type == DRIVE_REMOVABLE || type == DRIVE_CDROM;
}