
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_3__ {int (* func ) (int,int **) ;scalar_t__ name; } ;
typedef TYPE_1__* PCOMMAND ;
typedef scalar_t__ BOOL ;


 int ARRAYSIZE (int *) ;
 int ConInitStdStreams () ;
 int ConPrintf (int ,char*) ;
 int ConPuts (int ,char*) ;
 scalar_t__ FALSE ;
 int FreeLibrary (int *) ;
 int GetSystemDirectoryW (int *,int ) ;
 int * LoadLibrary (int *) ;
 int MAX_PATH ;
 int MSG_NET_SYNTAX ;
 int PrintMessageString (int) ;
 int PrintNetMessage (int ) ;
 int StdErr ;
 int StdOut ;
 scalar_t__ TRUE ;
 scalar_t__ _wcsicmp (int *,scalar_t__) ;
 TYPE_1__* cmds ;
 int * hModuleNetMsg ;
 int stub1 (int,int **) ;
 int wcscat (int *,char*) ;

int wmain(int argc, WCHAR **argv)
{
    WCHAR szDllBuffer[MAX_PATH];
    PCOMMAND cmdptr;
    int nResult = 0;
    BOOL bRun = FALSE;


    ConInitStdStreams();


    GetSystemDirectoryW(szDllBuffer, ARRAYSIZE(szDllBuffer));
    wcscat(szDllBuffer, L"\\netmsg.dll");

    hModuleNetMsg = LoadLibrary(szDllBuffer);
    if (hModuleNetMsg == ((void*)0))
    {
        ConPrintf(StdErr, L"Failed to load netmsg.dll\n");
        return 1;
    }

    if (argc < 2)
    {
        nResult = 1;
        goto done;
    }


    for (cmdptr = cmds; cmdptr->name; cmdptr++)
    {
        if (_wcsicmp(argv[1], cmdptr->name) == 0)
        {
            nResult = cmdptr->func(argc, argv);
            bRun = TRUE;
            break;
        }
    }

done:
    if (bRun == FALSE)
    {
        PrintMessageString(4381);
        ConPuts(StdOut, L"\n");
        PrintNetMessage(MSG_NET_SYNTAX);
    }

    if (hModuleNetMsg != ((void*)0))
        FreeLibrary(hModuleNetMsg);

    return nResult;
}
