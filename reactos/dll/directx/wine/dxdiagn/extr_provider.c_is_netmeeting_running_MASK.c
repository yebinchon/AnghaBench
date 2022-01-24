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
typedef  size_t DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t*) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  TRUE ; 
 size_t* FUNC3 (size_t*) ; 
 scalar_t__ FUNC4 (size_t,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char*) ; 

__attribute__((used)) static BOOL FUNC6(void)
{
    static const WCHAR conf_exe[] = {'c','o','n','f','.','e','x','e',0};

    DWORD list_count;
    DWORD *pid_list = FUNC3(&list_count);

    if (pid_list)
    {
        DWORD i;
        WCHAR process_name[MAX_PATH];

        for (i = 0; i < list_count; i++)
        {
            if (FUNC4(pid_list[i], process_name, FUNC0(process_name)) &&
                !FUNC5(conf_exe, process_name))
            {
                FUNC2(FUNC1(), 0, pid_list);
                return TRUE;
            }
        }
        FUNC2(FUNC1(), 0, pid_list);
    }

    return FALSE;
}