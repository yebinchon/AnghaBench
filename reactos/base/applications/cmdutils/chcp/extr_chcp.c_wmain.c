
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef scalar_t__ UINT ;


 int ConInitStdStreams () ;
 int ConResPrintf (int ,int ,int *) ;
 int ConResPuts (int ,int ) ;
 scalar_t__ GetConsoleCP () ;
 int * GetConsoleOutputCP () ;
 int STRING_CHCP_ERROR1 ;
 int STRING_CHCP_ERROR4 ;
 int STRING_CHCP_HELP ;
 int STRING_ERROR_INVALID_PARAM_FORMAT ;
 scalar_t__ SetConsoleCP (scalar_t__) ;
 scalar_t__ SetConsoleOutputCP (scalar_t__) ;
 int StdErr ;
 int StdOut ;
 scalar_t__ _wtoi (int *) ;
 scalar_t__ wcscmp (int *,char*) ;

int wmain(int argc, WCHAR* argv[])
{
    UINT uOldCodePage, uNewCodePage;


    ConInitStdStreams();


    if (argc > 1 && wcscmp(argv[1], L"/?") == 0)
    {
        ConResPuts(StdOut, STRING_CHCP_HELP);
        return 0;
    }

    if (argc == 1)
    {

        ConResPrintf(StdOut, STRING_CHCP_ERROR1, GetConsoleOutputCP());
        return 0;
    }

    if (argc > 2)
    {

        ConResPrintf(StdErr, STRING_ERROR_INVALID_PARAM_FORMAT, argv[2]);
        return 1;
    }

    uNewCodePage = (UINT)_wtoi(argv[1]);

    if (uNewCodePage == 0)
    {
        ConResPrintf(StdErr, STRING_ERROR_INVALID_PARAM_FORMAT, argv[1]);
        return 1;
    }





    uOldCodePage = GetConsoleCP();





    if (SetConsoleCP(uNewCodePage))
    {
        if (SetConsoleOutputCP(uNewCodePage))
        {

            ConResPrintf(StdOut, STRING_CHCP_ERROR1, GetConsoleOutputCP());
            return 0;
        }
        else
        {

            SetConsoleCP(uOldCodePage);
        }
    }


    ConResPuts(StdErr, STRING_CHCP_ERROR4);
    return 1;
}
