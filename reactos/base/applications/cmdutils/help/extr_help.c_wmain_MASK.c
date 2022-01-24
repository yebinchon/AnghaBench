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
typedef  int /*<<< orphan*/  CmdLine ;

/* Variables and functions */
 int CMDLINE_LENGTH ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IDS_HELP1 ; 
 int /*<<< orphan*/  IDS_HELP2 ; 
 int /*<<< orphan*/  IDS_NO_ENTRY ; 
 int /*<<< orphan*/  IDS_USAGE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  StdOut ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,char*) ; 

int FUNC8(int argc, WCHAR* argv[])
{
    WCHAR CmdLine[CMDLINE_LENGTH];

    /* Initialize the Console Standard Streams */
    FUNC0();

    /*
     * If the user hasn't asked for specific help,
     * then print out the list of available commands.
     */
    if (argc <= 1)
    {
        FUNC2(StdOut, IDS_HELP1);
        FUNC2(StdOut, IDS_HELP2);
        return 0;
    }

    /*
     * Bad usage (too much options) or we use the /? switch.
     * Display help for the HELP command.
     */
    if ((argc > 2) || (FUNC7(argv[1], L"/?") == 0))
    {
        FUNC2(StdOut, IDS_USAGE);
        return 0;
    }

    /*
     * If the command is not an internal one,
     * display an information message and exit.
     */
    if (!FUNC3(argv[1]))
    {
        FUNC1(StdOut, IDS_NO_ENTRY, argv[1]);
        return 0;
    }

    /*
     * Run "<command> /?" in the current command processor.
     */
    FUNC4(CmdLine, sizeof(CmdLine), L"%ls /?", argv[1]);

    FUNC5();
    return FUNC6(CmdLine);
}