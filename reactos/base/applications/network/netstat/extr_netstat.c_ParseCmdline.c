
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int WCHAR ;
typedef int* LPWSTR ;
typedef int INT ;
typedef void* BOOL ;


 int ConPuts (int ,char*) ;
 int ConResPuts (int ,int ) ;
 scalar_t__ EOF ;
 void* FALSE ;
 int ICMP ;
 int IDS_USAGE ;
 int IP ;
 int Interval ;
 int Protocol ;
 int StdOut ;
 int TCP ;
 void* TRUE ;
 int UDP ;
 int _wcsicmp (char*,int*) ;
 void* bDoDispSeqComp ;
 void* bDoShowAllCons ;
 void* bDoShowEthStats ;
 void* bDoShowNumbers ;
 void* bDoShowProcName ;
 void* bDoShowProcessId ;
 void* bDoShowProtoCons ;
 void* bDoShowProtoStats ;
 void* bDoShowRouteTable ;
 void* bLoopOutput ;
 void* bNoOptions ;
 scalar_t__ iswdigit (int) ;
 scalar_t__ swscanf (int*,char*,int *) ;
 int towlower (int) ;

BOOL ParseCmdline(int argc, wchar_t* argv[])
{
    LPWSTR Proto;
    WCHAR c;
    INT i;

    if ((argc == 1) || (iswdigit(*argv[1])))
        bNoOptions = TRUE;


    for (i = 1; i < argc; i++)
    {
        if ((argc > 1) && (argv[i][0] == L'-' || argv[i][0] == L'/'))
        {
            while ((c = *++argv[i]) != L'\0')
            {
                switch (towlower(c))
                {
                    case L'a':
                        bDoShowAllCons = TRUE;
                        break;
                    case L'b':
                        bDoShowProcName = TRUE;
                        break;
                    case L'e':
                        bDoShowEthStats = TRUE;
                        break;
                    case L'n':
                        bDoShowNumbers = TRUE;
                        break;
                    case L'p':
                        bDoShowProtoCons = TRUE;
                        Proto = argv[i+1];
                        if (!_wcsicmp(L"IP", Proto))
                            Protocol = IP;
                        else if (!_wcsicmp(L"ICMP", Proto))
                            Protocol = ICMP;
                        else if (!_wcsicmp(L"TCP", Proto))
                            Protocol = TCP;
                        else if (!_wcsicmp(L"UDP", Proto))
                            Protocol = UDP;
                        else
                        {
                            ConResPuts(StdOut, IDS_USAGE);
                            return FALSE;
                        }
                        break;
                    case L'r':
                        bDoShowRouteTable = TRUE;
                        break;
                    case L's':
                        bDoShowProtoStats = TRUE;
                        break;
                    case L'o':
                        bDoShowProcessId = TRUE;
                        break;
                    case L'v':

                        ConPuts(StdOut, L"got v\n");
                        bDoDispSeqComp = TRUE;
                        break;
                    default :
                        ConResPuts(StdOut, IDS_USAGE);
                        return FALSE;
                }
            }
        }
        else if (iswdigit(*argv[i]) != 0)
        {
            if (swscanf(argv[i], L"%lu", &Interval) != EOF)
                bLoopOutput = TRUE;
            else
                return FALSE;
        }





    }

    return TRUE;
}
