
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;


 int ConInitStdStreams () ;
 int ConPuts (int ,char*) ;
 int ConResPuts (int ,int ) ;
 int DisplayError (int ) ;
 int EWX_LOGOFF ;
 int ExitWindowsEx (int ,int ) ;
 int GetLastError () ;
 int IDS_LOGOFF_LOCAL ;
 int IDS_LOGOFF_REMOTE ;
 int IDS_USAGE ;
 int ParseCommandLine (int,int **) ;
 int StdErr ;
 int StdOut ;
 scalar_t__ bVerbose ;
 scalar_t__ szRemoteServerName ;

int wmain(int argc, WCHAR *argv[])
{

    ConInitStdStreams();


    if (!ParseCommandLine(argc, argv))
    {
        ConResPuts(StdOut, IDS_USAGE);
        return 1;
    }


    if (szRemoteServerName)
    {
        if (bVerbose)
            ConResPuts(StdOut, IDS_LOGOFF_REMOTE);


        ConPuts(StdErr, L"Remote Procedure Call in logoff.exe has not been implemented");
    }

    else
    {
        if (bVerbose)
        {

            ConResPuts(StdOut, IDS_LOGOFF_LOCAL);
        }


        if (!ExitWindowsEx(EWX_LOGOFF, 0))
        {
            DisplayError(GetLastError());
            return 1;
        }
    }

    return 0;
}
