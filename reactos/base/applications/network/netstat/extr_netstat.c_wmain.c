
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int WSADATA ;
typedef scalar_t__ BOOL ;


 int ConInitStdStreams () ;
 int ConResPrintf (int ,int ,int ) ;
 scalar_t__ DisplayOutput () ;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int IDS_ERROR_WSA_START ;
 int Interval ;
 int MAKEWORD (int,int) ;
 int ParseCmdline (int,int **) ;
 int Sleep (int) ;
 int StdErr ;
 int WSACleanup () ;
 int WSAGetLastError () ;
 scalar_t__ WSAStartup (int ,int *) ;
 scalar_t__ bLoopOutput ;

int wmain(int argc, wchar_t *argv[])
{
    BOOL Success;
    WSADATA wsaData;


    ConInitStdStreams();

    if (!ParseCmdline(argc, argv))
        return EXIT_FAILURE;

    if (WSAStartup(MAKEWORD(2, 2), &wsaData) != 0)
    {
        ConResPrintf(StdErr, IDS_ERROR_WSA_START, WSAGetLastError());
        return EXIT_FAILURE;
    }

    Success = DisplayOutput();
    while (bLoopOutput && Success)
    {
        Sleep(Interval*1000);
        Success = DisplayOutput();
    }

    WSACleanup();
    return (Success ? EXIT_SUCCESS : EXIT_FAILURE);
}
