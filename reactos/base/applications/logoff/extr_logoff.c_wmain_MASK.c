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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EWX_LOGOFF ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  IDS_LOGOFF_LOCAL ; 
 int /*<<< orphan*/  IDS_LOGOFF_REMOTE ; 
 int /*<<< orphan*/  IDS_USAGE ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  StdErr ; 
 int /*<<< orphan*/  StdOut ; 
 scalar_t__ bVerbose ; 
 scalar_t__ szRemoteServerName ; 

int FUNC7(int argc, WCHAR *argv[])
{
    /* Initialize the Console Standard Streams */
    FUNC0();

    /* Parse command line */
    if (!FUNC6(argc, argv))
    {
        FUNC2(StdOut, IDS_USAGE);
        return 1;
    }

    /* Should we log off session on remote server? */
    if (szRemoteServerName)
    {
        if (bVerbose)
            FUNC2(StdOut, IDS_LOGOFF_REMOTE);

        // FIXME: Add Remote Procedure Call to logoff user on a remote machine
        FUNC1(StdErr, L"Remote Procedure Call in logoff.exe has not been implemented");
    }
    /* Perform logoff of current session on local machine instead */
    else
    {
        if (bVerbose)
        {
            /* Get resource string and print it */
            FUNC2(StdOut, IDS_LOGOFF_LOCAL);
        }

        /* Actual logoff */
        if (!FUNC4(EWX_LOGOFF, 0))
        {
            FUNC3(FUNC5());
            return 1;
        }
    }

    return 0;
}