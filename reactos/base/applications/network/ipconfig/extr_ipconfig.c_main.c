
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BOOL ;


 int DisplayDns () ;
 int FALSE ;
 int FlushDns () ;
 int GetModuleHandle (int *) ;
 int GetProcessHeap () ;
 int ProcessHeap ;
 int Release (int *) ;
 int Renew (int *) ;
 int ShowInfo (int ) ;
 int TRUE ;
 int Usage () ;
 int _T (char*) ;
 int _tcsicmp (char*,int ) ;
 int _tcslen (char*) ;
 int _tcsnicmp (char*,int ,int ) ;
 int _tprintf (int ) ;
 int hInstance ;

int main(int argc, char *argv[])
{
    BOOL DoUsage=FALSE;
    BOOL DoAll=FALSE;
    BOOL DoRelease=FALSE;
    BOOL DoRenew=FALSE;
    BOOL DoFlushdns=FALSE;
    BOOL DoRegisterdns=FALSE;
    BOOL DoDisplaydns=FALSE;
    BOOL DoShowclassid=FALSE;
    BOOL DoSetclassid=FALSE;

    hInstance = GetModuleHandle(((void*)0));
    ProcessHeap = GetProcessHeap();


    if ((argc > 1) && (argv[1][0]=='/' || argv[1][0]=='-'))
    {
        if (!_tcsicmp(&argv[1][1], _T("?")))
        {
            DoUsage = TRUE;
        }
        else if (!_tcsnicmp(&argv[1][1], _T("ALL"), _tcslen(&argv[1][1])))
        {
           DoAll = TRUE;
        }
        else if (!_tcsnicmp(&argv[1][1], _T("RELEASE"), _tcslen(&argv[1][1])))
        {
            DoRelease = TRUE;
        }
        else if (!_tcsnicmp(&argv[1][1], _T("RENEW"), _tcslen(&argv[1][1])))
        {
            DoRenew = TRUE;
        }
        else if (!_tcsnicmp(&argv[1][1], _T("FLUSHDNS"), _tcslen(&argv[1][1])))
        {
            DoFlushdns = TRUE;
        }
        else if (!_tcsnicmp(&argv[1][1], _T("FLUSHREGISTERDNS"), _tcslen(&argv[1][1])))
        {
            DoRegisterdns = TRUE;
        }
        else if (!_tcsnicmp(&argv[1][1], _T("DISPLAYDNS"), _tcslen(&argv[1][1])))
        {
            DoDisplaydns = TRUE;
        }
        else if (!_tcsnicmp(&argv[1][1], _T("SHOWCLASSID"), _tcslen(&argv[1][1])))
        {
            DoShowclassid = TRUE;
        }
        else if (!_tcsnicmp(&argv[1][1], _T("SETCLASSID"), _tcslen(&argv[1][1])))
        {
            DoSetclassid = TRUE;
        }
    }

    switch (argc)
    {
        case 1:
            ShowInfo(FALSE);
            break;
        case 2:
            if (DoUsage)
                Usage();
            else if (DoAll)
                ShowInfo(TRUE);
            else if (DoRelease)
                Release(((void*)0));
            else if (DoRenew)
                Renew(((void*)0));
            else if (DoFlushdns)
                FlushDns();
            else if (DoRegisterdns)
                _tprintf(_T("\nSorry /registerdns is not implemented yet\n"));
            else if (DoDisplaydns)
                DisplayDns();
            else
                Usage();
            break;
        case 3:
            if (DoRelease)
                _tprintf(_T("\nSorry /release [adapter] is not implemented yet\n"));

            else if (DoRenew)
                _tprintf(_T("\nSorry /renew [adapter] is not implemented yet\n"));
            else if (DoShowclassid)
                _tprintf(_T("\nSorry /showclassid adapter is not implemented yet\n"));
            else if (DoSetclassid)
                _tprintf(_T("\nSorry /setclassid adapter is not implemented yet\n"));
            else
                Usage();
            break;
        case 4:
            if (DoSetclassid)
                _tprintf(_T("\nSorry /setclassid adapter [classid]is not implemented yet\n"));
            else
                Usage();
            break;
        default:
            Usage();
    }

    return 0;
}
