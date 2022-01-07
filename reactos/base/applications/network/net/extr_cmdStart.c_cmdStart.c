
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int INT ;


 int ConPuts (int ,char*) ;
 int EnumerateRunningServices () ;
 int MSG_START_HELP ;
 int MSG_START_SYNTAX ;
 int PrintMessageString (int) ;
 int PrintNetMessage (int ) ;
 int StartOneService (int,int **) ;
 int StdOut ;
 scalar_t__ _wcsicmp (int *,char*) ;

INT
cmdStart(INT argc, WCHAR **argv)
{
    INT i;

    if (argc == 2)
    {
        return EnumerateRunningServices();
    }

    for (i = 2; i < argc; i++)
    {
        if (_wcsicmp(argv[i], L"/help") == 0)
        {
            PrintMessageString(4381);
            ConPuts(StdOut, L"\n");
            PrintNetMessage(MSG_START_SYNTAX);
            PrintNetMessage(MSG_START_HELP);
            return 1;
        }
    }

    return StartOneService(argc, argv);
}
