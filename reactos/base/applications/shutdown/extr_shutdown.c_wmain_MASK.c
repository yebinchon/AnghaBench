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
struct CommandLineOptions {scalar_t__ shutdown_delay; scalar_t__ restart; int /*<<< orphan*/  reason; int /*<<< orphan*/  force; int /*<<< orphan*/  message; int /*<<< orphan*/ * remote_system; scalar_t__ shutdown; scalar_t__ logoff; scalar_t__ show_gui; scalar_t__ hibernate; scalar_t__ abort; } ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  EWX_LOGOFF ; 
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  IDS_ERROR_ABORT ; 
 int /*<<< orphan*/  IDS_ERROR_HIBERNATE ; 
 int /*<<< orphan*/  IDS_ERROR_HIBERNATE_ENABLED ; 
 int /*<<< orphan*/  IDS_ERROR_LOGOFF ; 
 int /*<<< orphan*/  IDS_ERROR_RESTART ; 
 int /*<<< orphan*/  IDS_ERROR_SHUTDOWN ; 
 int /*<<< orphan*/  IDS_ERROR_SHUTDOWN_REBOOT ; 
 int /*<<< orphan*/  IDS_ERROR_TIMEOUT ; 
 int /*<<< orphan*/  IDS_USAGE ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 () ; 
 scalar_t__ MAX_SHUTDOWN_TIMEOUT ; 
 scalar_t__ FUNC10 (struct CommandLineOptions*,int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  SE_REMOTE_SHUTDOWN_NAME ; 
 int /*<<< orphan*/  SE_SHUTDOWN_NAME ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (struct CommandLineOptions) ; 
 int /*<<< orphan*/  StdErr ; 
 int /*<<< orphan*/  StdOut ; 
 int /*<<< orphan*/  TRUE ; 

int FUNC13(int argc, WCHAR *argv[])
{
    DWORD error = ERROR_SUCCESS;
    struct CommandLineOptions opts;

    /* Initialize the Console Standard Streams */
    FUNC1();

    if (argc == 1) /* i.e. no commandline arguments given */
    {
        FUNC3(StdOut, IDS_USAGE);
        return EXIT_SUCCESS;
    }

    error = FUNC10(&opts, argc, argv);
    if (error != ERROR_SUCCESS)
    {
        FUNC4(error);
        return EXIT_FAILURE;
    }

    /* If the user wants to abort a shutdown */
    if (opts.abort)
    {
        /* First, the program has to determine if the shutdown/restart is local
        or remote. This is done since each one requires separate privileges. */
        if (opts.remote_system == NULL)
            FUNC5(SE_SHUTDOWN_NAME, TRUE);
        else
            FUNC5(SE_REMOTE_SHUTDOWN_NAME, TRUE);

        /* Abort the delayed system shutdown specified. */
        if (!FUNC0(opts.remote_system))
        {
            FUNC3(StdErr, IDS_ERROR_ABORT);
            FUNC4(FUNC7());
            return EXIT_FAILURE;
        }
        else
        {
            return EXIT_SUCCESS;
        }
    }

    /*
     * If the user wants to hibernate the computer. Assume
     * that the user wants to wake the computer up from 
     * hibernation and it should not force it on the system.
     */
    if (opts.hibernate)
    {
        if (FUNC9())
        {
            FUNC5(SE_SHUTDOWN_NAME, TRUE);
            
            /* The shutdown utility cannot hibernate remote systems */
            if (opts.remote_system != NULL)
            {
                return EXIT_FAILURE;
            }
        
            if (!FUNC11(TRUE, FALSE, FALSE))
            {
                FUNC3(StdErr, IDS_ERROR_HIBERNATE);
                FUNC4(FUNC7());
                return EXIT_FAILURE;
            }
            else
            {
                FUNC3(StdOut, IDS_ERROR_HIBERNATE_ENABLED);
                return EXIT_SUCCESS;
            }
        }
        else
        {
            return EXIT_FAILURE;
        }
    }

    /* Both shutdown and restart flags cannot both be true */
    if (opts.shutdown && opts.restart)
    {
        FUNC3(StdErr, IDS_ERROR_SHUTDOWN_REBOOT);
        return EXIT_FAILURE;
    }

    /* Ensure that the timeout amount is not too high or a negative number */
    if (opts.shutdown_delay > MAX_SHUTDOWN_TIMEOUT)
    {
        FUNC2(StdErr, IDS_ERROR_TIMEOUT, opts.shutdown_delay);
        return EXIT_FAILURE;
    }

    /* If the user wants a GUI environment */
    if (opts.show_gui)
    {
        if (FUNC12(opts))
            return EXIT_SUCCESS;
        else
            return EXIT_FAILURE;
    }

    if (opts.logoff && (opts.remote_system == NULL))
    {
        /*
         * NOTE: Sometimes, shutdown and logoff are used together. If the logoff
         * flag is used by itself, then simply logoff. But if used with shutdown,
         * then skip logging off of the computer and eventually go to the action
         * for shutdown.
         */
        if (!opts.shutdown && !opts.restart)
        {
            FUNC5(SE_SHUTDOWN_NAME, TRUE);

            if (FUNC6(EWX_LOGOFF, opts.reason))
            {
                return EXIT_SUCCESS;
            }
            else
            {
                FUNC3(StdErr, IDS_ERROR_LOGOFF);
                FUNC4(FUNC7());
                return EXIT_FAILURE;
            }
        }
    }

    /*
     * Since both shutting down the system and restarting calls the exact same
     * function, all we need to know is if we wanted to restart or shutdown.
     */
    if (opts.shutdown || opts.restart)
    {
        /*
         * First, the program has to determine if the shutdown/restart is local
         * or remote. This is done since each one requires separate privileges.
         */
        if (opts.remote_system == NULL)
        {
            FUNC5(SE_SHUTDOWN_NAME, TRUE);
        }
        else
        {
            /* TODO: Remote shutdown is not supported yet */
            // EnablePrivilege(SE_REMOTE_SHUTDOWN_NAME, TRUE);
            return EXIT_SUCCESS;
        }

        /* Initiate the shutdown */
        if (!FUNC8(opts.remote_system,
                                       opts.message,
                                       opts.shutdown_delay,
                                       opts.force,
                                       opts.restart,
                                       opts.reason))
        {
            /*
             * If there is an error, give the proper output depending
             * on whether the user wanted to shutdown or restart.
             */
            if (opts.restart)
                FUNC3(StdErr, IDS_ERROR_RESTART);
            else
                FUNC3(StdErr, IDS_ERROR_SHUTDOWN);
            
            FUNC4(FUNC7());
            return EXIT_FAILURE;
        }
        else
        {
            return EXIT_SUCCESS;
        }
    }

    return EXIT_SUCCESS;
}