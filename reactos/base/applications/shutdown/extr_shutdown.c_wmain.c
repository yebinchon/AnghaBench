
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct CommandLineOptions {scalar_t__ shutdown_delay; scalar_t__ restart; int reason; int force; int message; int * remote_system; scalar_t__ shutdown; scalar_t__ logoff; scalar_t__ show_gui; scalar_t__ hibernate; scalar_t__ abort; } ;
typedef int WCHAR ;
typedef scalar_t__ DWORD ;


 int AbortSystemShutdownW (int *) ;
 int ConInitStdStreams () ;
 int ConResPrintf (int ,int ,scalar_t__) ;
 int ConResPuts (int ,int ) ;
 int DisplayError (scalar_t__) ;
 scalar_t__ ERROR_SUCCESS ;
 int EWX_LOGOFF ;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int EnablePrivilege (int ,int ) ;
 scalar_t__ ExitWindowsEx (int ,int ) ;
 int FALSE ;
 scalar_t__ GetLastError () ;
 int IDS_ERROR_ABORT ;
 int IDS_ERROR_HIBERNATE ;
 int IDS_ERROR_HIBERNATE_ENABLED ;
 int IDS_ERROR_LOGOFF ;
 int IDS_ERROR_RESTART ;
 int IDS_ERROR_SHUTDOWN ;
 int IDS_ERROR_SHUTDOWN_REBOOT ;
 int IDS_ERROR_TIMEOUT ;
 int IDS_USAGE ;
 int InitiateSystemShutdownExW (int *,int ,scalar_t__,int ,scalar_t__,int ) ;
 scalar_t__ IsPwrHibernateAllowed () ;
 scalar_t__ MAX_SHUTDOWN_TIMEOUT ;
 scalar_t__ ParseArguments (struct CommandLineOptions*,int,int **) ;
 int SE_REMOTE_SHUTDOWN_NAME ;
 int SE_SHUTDOWN_NAME ;
 int SetSuspendState (int ,int ,int ) ;
 scalar_t__ ShutdownGuiMain (struct CommandLineOptions) ;
 int StdErr ;
 int StdOut ;
 int TRUE ;

int wmain(int argc, WCHAR *argv[])
{
    DWORD error = ERROR_SUCCESS;
    struct CommandLineOptions opts;


    ConInitStdStreams();

    if (argc == 1)
    {
        ConResPuts(StdOut, IDS_USAGE);
        return EXIT_SUCCESS;
    }

    error = ParseArguments(&opts, argc, argv);
    if (error != ERROR_SUCCESS)
    {
        DisplayError(error);
        return EXIT_FAILURE;
    }


    if (opts.abort)
    {


        if (opts.remote_system == ((void*)0))
            EnablePrivilege(SE_SHUTDOWN_NAME, TRUE);
        else
            EnablePrivilege(SE_REMOTE_SHUTDOWN_NAME, TRUE);


        if (!AbortSystemShutdownW(opts.remote_system))
        {
            ConResPuts(StdErr, IDS_ERROR_ABORT);
            DisplayError(GetLastError());
            return EXIT_FAILURE;
        }
        else
        {
            return EXIT_SUCCESS;
        }
    }






    if (opts.hibernate)
    {
        if (IsPwrHibernateAllowed())
        {
            EnablePrivilege(SE_SHUTDOWN_NAME, TRUE);


            if (opts.remote_system != ((void*)0))
            {
                return EXIT_FAILURE;
            }

            if (!SetSuspendState(TRUE, FALSE, FALSE))
            {
                ConResPuts(StdErr, IDS_ERROR_HIBERNATE);
                DisplayError(GetLastError());
                return EXIT_FAILURE;
            }
            else
            {
                ConResPuts(StdOut, IDS_ERROR_HIBERNATE_ENABLED);
                return EXIT_SUCCESS;
            }
        }
        else
        {
            return EXIT_FAILURE;
        }
    }


    if (opts.shutdown && opts.restart)
    {
        ConResPuts(StdErr, IDS_ERROR_SHUTDOWN_REBOOT);
        return EXIT_FAILURE;
    }


    if (opts.shutdown_delay > MAX_SHUTDOWN_TIMEOUT)
    {
        ConResPrintf(StdErr, IDS_ERROR_TIMEOUT, opts.shutdown_delay);
        return EXIT_FAILURE;
    }


    if (opts.show_gui)
    {
        if (ShutdownGuiMain(opts))
            return EXIT_SUCCESS;
        else
            return EXIT_FAILURE;
    }

    if (opts.logoff && (opts.remote_system == ((void*)0)))
    {






        if (!opts.shutdown && !opts.restart)
        {
            EnablePrivilege(SE_SHUTDOWN_NAME, TRUE);

            if (ExitWindowsEx(EWX_LOGOFF, opts.reason))
            {
                return EXIT_SUCCESS;
            }
            else
            {
                ConResPuts(StdErr, IDS_ERROR_LOGOFF);
                DisplayError(GetLastError());
                return EXIT_FAILURE;
            }
        }
    }





    if (opts.shutdown || opts.restart)
    {




        if (opts.remote_system == ((void*)0))
        {
            EnablePrivilege(SE_SHUTDOWN_NAME, TRUE);
        }
        else
        {


            return EXIT_SUCCESS;
        }


        if (!InitiateSystemShutdownExW(opts.remote_system,
                                       opts.message,
                                       opts.shutdown_delay,
                                       opts.force,
                                       opts.restart,
                                       opts.reason))
        {




            if (opts.restart)
                ConResPuts(StdErr, IDS_ERROR_RESTART);
            else
                ConResPuts(StdErr, IDS_ERROR_SHUTDOWN);

            DisplayError(GetLastError());
            return EXIT_FAILURE;
        }
        else
        {
            return EXIT_SUCCESS;
        }
    }

    return EXIT_SUCCESS;
}
