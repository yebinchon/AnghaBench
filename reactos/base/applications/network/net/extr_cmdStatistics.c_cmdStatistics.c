
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef size_t INT ;
typedef scalar_t__ BOOL ;


 int ConPuts (int ,char*) ;
 size_t DisplayServerStatistics () ;
 size_t DisplayWorkstationStatistics () ;
 int ERROR_SUCCESS ;
 scalar_t__ FALSE ;
 int MSG_STATISTICS_HELP ;
 int MSG_STATISTICS_SYNTAX ;
 int PrintErrorMessage (int ) ;
 int PrintMessageString (int) ;
 int PrintNetMessage (int ) ;
 int StdOut ;
 scalar_t__ TRUE ;
 scalar_t__ _wcsicmp (int *,char*) ;

INT
cmdStatistics(
    INT argc,
    WCHAR **argv)
{
    INT i, result = 0;
    BOOL bServer = FALSE;
    BOOL bWorkstation = FALSE;

    for (i = 2; i < argc; i++)
    {
        if (_wcsicmp(argv[i], L"server") == 0)
        {
            if (bWorkstation == FALSE)
                bServer = TRUE;
            continue;
        }

        if (_wcsicmp(argv[i], L"workstation") == 0)
        {
            if (bServer == FALSE)
                bWorkstation = TRUE;
            continue;
        }

        if (_wcsicmp(argv[i], L"help") == 0)
        {

            PrintMessageString(4381);
            ConPuts(StdOut, L"\n");
            PrintNetMessage(MSG_STATISTICS_SYNTAX);
            return 0;
        }

        if (_wcsicmp(argv[i], L"/help") == 0)
        {

            PrintMessageString(4381);
            ConPuts(StdOut, L"\n");
            PrintNetMessage(MSG_STATISTICS_SYNTAX);
            PrintNetMessage(MSG_STATISTICS_HELP);
            return 0;
        }
    }

    if (bServer)
    {
        result = DisplayServerStatistics();
    }
    else if (bWorkstation)
    {
        result = DisplayWorkstationStatistics();
    }
    else
    {
        PrintMessageString(4379);
        ConPuts(StdOut, L"\n");
        ConPuts(StdOut, L"   Server\n");
        ConPuts(StdOut, L"   Workstation\n");
        ConPuts(StdOut, L"\n");
    }

    if (result == 0)
        PrintErrorMessage(ERROR_SUCCESS);

    return result;
}
