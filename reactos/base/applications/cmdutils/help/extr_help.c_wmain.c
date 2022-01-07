
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int CmdLine ;


 int CMDLINE_LENGTH ;
 int ConInitStdStreams () ;
 int ConResPrintf (int ,int ,int *) ;
 int ConResPuts (int ,int ) ;
 int IDS_HELP1 ;
 int IDS_HELP2 ;
 int IDS_NO_ENTRY ;
 int IDS_USAGE ;
 int IsInternalCommand (int *) ;
 int StdOut ;
 int StringCbPrintfW (int *,int,char*,int *) ;
 int _flushall () ;
 int _wsystem (int *) ;
 scalar_t__ wcscmp (int *,char*) ;

int wmain(int argc, WCHAR* argv[])
{
    WCHAR CmdLine[CMDLINE_LENGTH];


    ConInitStdStreams();





    if (argc <= 1)
    {
        ConResPuts(StdOut, IDS_HELP1);
        ConResPuts(StdOut, IDS_HELP2);
        return 0;
    }





    if ((argc > 2) || (wcscmp(argv[1], L"/?") == 0))
    {
        ConResPuts(StdOut, IDS_USAGE);
        return 0;
    }





    if (!IsInternalCommand(argv[1]))
    {
        ConResPrintf(StdOut, IDS_NO_ENTRY, argv[1]);
        return 0;
    }




    StringCbPrintfW(CmdLine, sizeof(CmdLine), L"%ls /?", argv[1]);

    _flushall();
    return _wsystem(CmdLine);
}
