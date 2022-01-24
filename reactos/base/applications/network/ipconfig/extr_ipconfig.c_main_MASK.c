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
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  ProcessHeap ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hInstance ; 

int FUNC13(int argc, char *argv[])
{
    BOOL DoUsage=FALSE;
    BOOL DoAll=FALSE;
    BOOL DoRelease=FALSE;
    BOOL DoRenew=FALSE;
    BOOL DoFlushdns=FALSE;
    BOOL DoRegisterdns=FALSE;
    BOOL DoDisplaydns=FALSE;
    BOOL DoShowclassid=FALSE;
    BOOL DoSetclassid=FALSE;

    hInstance = FUNC2(NULL);
    ProcessHeap = FUNC3();

    /* Parse command line for options we have been given. */
    if ((argc > 1) && (argv[1][0]=='/' || argv[1][0]=='-'))
    {
        if (!FUNC9(&argv[1][1], FUNC8("?")))
        {
            DoUsage = TRUE;
        }
        else if (!FUNC11(&argv[1][1], FUNC8("ALL"), FUNC10(&argv[1][1])))
        {
           DoAll = TRUE;
        }
        else if (!FUNC11(&argv[1][1], FUNC8("RELEASE"), FUNC10(&argv[1][1])))
        {
            DoRelease = TRUE;
        }
        else if (!FUNC11(&argv[1][1], FUNC8("RENEW"), FUNC10(&argv[1][1])))
        {
            DoRenew = TRUE;
        }
        else if (!FUNC11(&argv[1][1], FUNC8("FLUSHDNS"), FUNC10(&argv[1][1])))
        {
            DoFlushdns = TRUE;
        }
        else if (!FUNC11(&argv[1][1], FUNC8("FLUSHREGISTERDNS"), FUNC10(&argv[1][1])))
        {
            DoRegisterdns = TRUE;
        }
        else if (!FUNC11(&argv[1][1], FUNC8("DISPLAYDNS"), FUNC10(&argv[1][1])))
        {
            DoDisplaydns = TRUE;
        }
        else if (!FUNC11(&argv[1][1], FUNC8("SHOWCLASSID"), FUNC10(&argv[1][1])))
        {
            DoShowclassid = TRUE;
        }
        else if (!FUNC11(&argv[1][1], FUNC8("SETCLASSID"), FUNC10(&argv[1][1])))
        {
            DoSetclassid = TRUE;
        }
    }

    switch (argc)
    {
        case 1:  /* Default behaviour if no options are given*/
            FUNC6(FALSE);
            break;
        case 2:  /* Process all the options that take no parameters */
            if (DoUsage)
                FUNC7();
            else if (DoAll)
                FUNC6(TRUE);
            else if (DoRelease)
                FUNC4(NULL);
            else if (DoRenew)
                FUNC5(NULL);
            else if (DoFlushdns)
                FUNC1();
            else if (DoRegisterdns)
                FUNC12(FUNC8("\nSorry /registerdns is not implemented yet\n"));
            else if (DoDisplaydns)
                FUNC0();
            else
                FUNC7();
            break;
        case 3: /* Process all the options that can have 1 parameter */
            if (DoRelease)
                FUNC12(FUNC8("\nSorry /release [adapter] is not implemented yet\n"));
                //Release(argv[2]);
            else if (DoRenew)
                FUNC12(FUNC8("\nSorry /renew [adapter] is not implemented yet\n"));
            else if (DoShowclassid)
                FUNC12(FUNC8("\nSorry /showclassid adapter is not implemented yet\n"));
            else if (DoSetclassid)
                FUNC12(FUNC8("\nSorry /setclassid adapter is not implemented yet\n"));
            else
                FUNC7();
            break;
        case 4:  /* Process all the options that can have 2 parameters */
            if (DoSetclassid)
                FUNC12(FUNC8("\nSorry /setclassid adapter [classid]is not implemented yet\n"));
            else
                FUNC7();
            break;
        default:
            FUNC7();
    }

    return 0;
}