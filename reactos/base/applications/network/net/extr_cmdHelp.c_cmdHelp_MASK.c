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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int INT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  MSG_ACCOUNTS_HELP ; 
 int /*<<< orphan*/  MSG_ACCOUNTS_SYNTAX ; 
 int /*<<< orphan*/  MSG_COMPUTER_HELP ; 
 int /*<<< orphan*/  MSG_COMPUTER_SYNTAX ; 
 int /*<<< orphan*/  MSG_CONFIG_HELP ; 
 int /*<<< orphan*/  MSG_CONFIG_SERVER_HELP ; 
 int /*<<< orphan*/  MSG_CONFIG_SERVER_SYNTAX ; 
 int /*<<< orphan*/  MSG_CONFIG_SYNTAX ; 
 int /*<<< orphan*/  MSG_CONTINUE_HELP ; 
 int /*<<< orphan*/  MSG_CONTINUE_SYNTAX ; 
 int /*<<< orphan*/  MSG_FILE_HELP ; 
 int /*<<< orphan*/  MSG_FILE_SYNTAX ; 
 int /*<<< orphan*/  MSG_GROUP_HELP ; 
 int /*<<< orphan*/  MSG_GROUP_SYNTAX ; 
 int /*<<< orphan*/  MSG_HELPMSG_HELP ; 
 int /*<<< orphan*/  MSG_HELPMSG_SYNTAX ; 
 int /*<<< orphan*/  MSG_HELP_HELP ; 
 int /*<<< orphan*/  MSG_HELP_SYNTAX ; 
 int /*<<< orphan*/  MSG_LOCALGROUP_HELP ; 
 int /*<<< orphan*/  MSG_LOCALGROUP_SYNTAX ; 
 int /*<<< orphan*/  MSG_NAME_HELP ; 
 int /*<<< orphan*/  MSG_NAME_SYNTAX ; 
 int /*<<< orphan*/  MSG_PAUSE_HELP ; 
 int /*<<< orphan*/  MSG_PAUSE_SYNTAX ; 
 int /*<<< orphan*/  MSG_PRINT_HELP ; 
 int /*<<< orphan*/  MSG_PRINT_SYNTAX ; 
 int /*<<< orphan*/  MSG_SEND_HELP ; 
 int /*<<< orphan*/  MSG_SEND_SYNTAX ; 
 int /*<<< orphan*/  MSG_SESSION_HELP ; 
 int /*<<< orphan*/  MSG_SESSION_SYNTAX ; 
 int /*<<< orphan*/  MSG_SHARE_HELP ; 
 int /*<<< orphan*/  MSG_SHARE_SYNTAX ; 
 int /*<<< orphan*/  MSG_START_HELP ; 
 int /*<<< orphan*/  MSG_START_SYNTAX ; 
 int /*<<< orphan*/  MSG_STATISTICS_HELP ; 
 int /*<<< orphan*/  MSG_STATISTICS_SYNTAX ; 
 int /*<<< orphan*/  MSG_STOP_HELP ; 
 int /*<<< orphan*/  MSG_STOP_SYNTAX ; 
 int /*<<< orphan*/  MSG_SYNTAX_HELP ; 
 int /*<<< orphan*/  MSG_TIME_HELP ; 
 int /*<<< orphan*/  MSG_TIME_SYNTAX ; 
 int /*<<< orphan*/  MSG_USER_HELP ; 
 int /*<<< orphan*/  MSG_USER_SYNTAX ; 
 int /*<<< orphan*/  MSG_USE_HELP ; 
 int /*<<< orphan*/  MSG_USE_SYNTAX ; 
 int /*<<< orphan*/  MSG_VIEW_HELP ; 
 int /*<<< orphan*/  MSG_VIEW_SYNTAX ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  StdOut ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*) ; 

INT FUNC4(INT argc, WCHAR **argv)
{
    FUNC1(4381);
    FUNC0(StdOut, L"\n");

    if (argc != 3)
    {
        FUNC2(MSG_HELP_SYNTAX);
        FUNC2(MSG_HELP_HELP);
        return 0;
    }

    if (FUNC3(argv[2], L"ACCOUNTS") == 0)
    {
        FUNC2(MSG_ACCOUNTS_SYNTAX);
        FUNC2(MSG_ACCOUNTS_HELP);
        return 0;
    }

    if (FUNC3(argv[2], L"COMPUTER") == 0)
    {
        FUNC2(MSG_COMPUTER_SYNTAX);
        FUNC2(MSG_COMPUTER_HELP);
        return 0;
    }

    if (FUNC3(argv[2], L"CONFIG") == 0)
    {
        if ((argc > 3) && (FUNC3(argv[3], L"SERVER") == 0))
        {
            FUNC2(MSG_CONFIG_SERVER_SYNTAX);
            FUNC2(MSG_CONFIG_SERVER_HELP);
            return 0;
        }
        else
        {
            FUNC2(MSG_CONFIG_SYNTAX);
            FUNC2(MSG_CONFIG_HELP);
            return 0;
        }
    }

    if (FUNC3(argv[2], L"CONTINUE") == 0)
    {
        FUNC2(MSG_CONTINUE_SYNTAX);
        FUNC2(MSG_CONTINUE_HELP);
        return 0;
    }

    if (FUNC3(argv[2], L"FILE") == 0)
    {
        FUNC2(MSG_FILE_SYNTAX);
        FUNC2(MSG_FILE_HELP);
        return 0;
    }

    if (FUNC3(argv[2], L"GROUP") == 0)
    {
        FUNC2(MSG_GROUP_SYNTAX);
        FUNC2(MSG_GROUP_HELP);
        return 0;
    }

    if (FUNC3(argv[2], L"HELPMSG") == 0)
    {
        FUNC2(MSG_HELPMSG_SYNTAX);
        FUNC2(MSG_HELPMSG_HELP);
        return 0;
    }

    if (FUNC3(argv[2], L"LOCALGROUP") == 0)
    {
        FUNC2(MSG_LOCALGROUP_SYNTAX);
        FUNC2(MSG_LOCALGROUP_HELP);
        return 0;
    }

    if (FUNC3(argv[2], L"NAME") == 0)
    {
        FUNC2(MSG_NAME_SYNTAX);
        FUNC2(MSG_NAME_HELP);
        return 0;
    }

    if (FUNC3(argv[2], L"PAUSE") == 0)
    {
        FUNC2(MSG_PAUSE_SYNTAX);
        FUNC2(MSG_PAUSE_HELP);
        return 0;
    }

    if (FUNC3(argv[2], L"PRINT") == 0)
    {
        FUNC2(MSG_PRINT_SYNTAX);
        FUNC2(MSG_PRINT_HELP);
        return 0;
    }

    if (FUNC3(argv[2], L"SEND") == 0)
    {
        FUNC2(MSG_SEND_SYNTAX);
        FUNC2(MSG_SEND_HELP);
        return 0;
    }

    if (FUNC3(argv[2], L"SESSION") == 0)
    {
        FUNC2(MSG_SESSION_SYNTAX);
        FUNC2(MSG_SESSION_HELP);
        return 0;
    }

    if (FUNC3(argv[2], L"SHARE") == 0)
    {
        FUNC2(MSG_SHARE_SYNTAX);
        FUNC2(MSG_SHARE_HELP);
        return 0;
    }

    if (FUNC3(argv[2], L"START") == 0)
    {
        FUNC2(MSG_START_SYNTAX);
        FUNC2(MSG_START_HELP);
        return 0;
    }

    if (FUNC3(argv[2], L"STATISTICS") == 0)
    {
        FUNC2(MSG_STATISTICS_SYNTAX);
        FUNC2(MSG_STATISTICS_HELP);
        return 0;
    }

    if (FUNC3(argv[2], L"STOP") == 0)
    {
        FUNC2(MSG_STOP_SYNTAX);
        FUNC2(MSG_STOP_HELP);
        return 0;
    }

    if (FUNC3(argv[2], L"TIME") == 0)
    {
        FUNC2(MSG_TIME_SYNTAX);
        FUNC2(MSG_TIME_HELP);
        return 0;
    }

    if (FUNC3(argv[2], L"USE") == 0)
    {
        FUNC2(MSG_USE_SYNTAX);
        FUNC2(MSG_USE_HELP);
        return 0;
    }

    if (FUNC3(argv[2], L"USER") == 0)
    {
        FUNC2(MSG_USER_SYNTAX);
        FUNC2(MSG_USER_HELP);
        return 0;
    }

    if (FUNC3(argv[2], L"VIEW") == 0)
    {
        FUNC2(MSG_VIEW_SYNTAX);
        FUNC2(MSG_VIEW_HELP);
        return 0;
    }

#if 0
    if (_wcsicmp(argv[2], L"SERVICES") == 0)
    {
        return 0;
    }
#endif

    if (FUNC3(argv[2], L"SYNTAX") == 0)
    {
        FUNC2(MSG_SYNTAX_HELP);
        return 0;
    }

    FUNC2(MSG_HELP_SYNTAX);
    FUNC2(MSG_HELP_HELP);

    return 0;
}