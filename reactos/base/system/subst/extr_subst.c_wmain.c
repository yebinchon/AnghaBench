
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int INT ;


 int AddSubst (int *,int *) ;
 int ConInitStdStreams () ;
 int ConResPrintf (int ,int ,int *) ;
 int ConResPuts (int ,int ) ;
 int DeleteSubst (int *) ;
 int DumpSubstedDrives () ;
 int IDS_INCORRECT_PARAMETER_COUNT ;
 int IDS_INVALID_PARAMETER ;
 int IDS_USAGE ;
 int StdErr ;
 int StdOut ;
 int _wcsicmp (int *,char*) ;

int wmain(int argc, WCHAR* argv[])
{
    INT i;


    ConInitStdStreams();

    for (i = 0; i < argc; i++)
    {
        if (!_wcsicmp(argv[i], L"/?"))
        {
            ConResPuts(StdOut, IDS_USAGE);
            return 0;
        }
    }

    if (argc < 3)
    {
        if (argc >= 2)
        {
            ConResPrintf(StdErr, IDS_INVALID_PARAMETER, argv[1]);
            return 1;
        }
        DumpSubstedDrives();
        return 0;
    }

    if (argc > 3)
    {
        ConResPrintf(StdErr, IDS_INCORRECT_PARAMETER_COUNT, argv[3]);
        return 1;
    }

    if (!_wcsicmp(argv[1], L"/D"))
        return DeleteSubst(argv[2]);
    if (!_wcsicmp(argv[2], L"/D"))
        return DeleteSubst(argv[1]);
    return AddSubst(argv[1], argv[2]);
}
