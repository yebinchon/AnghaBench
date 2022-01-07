
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int INT ;
typedef void* BOOL ;


 int ConResPuts (int ,int ) ;
 void* FALSE ;
 int IDS_USAGE ;
 int StdOut ;
 void* TRUE ;
 void* bAdhoc ;
 void* bConnect ;
 void* bDisconnect ;
 void* bScan ;
 int* sSsid ;
 int* sWepKey ;

BOOL ParseCmdline(int argc, WCHAR *argv[])
{
    INT i;

    for (i = 1; i < argc; i++)
    {
        if (argv[i][0] == L'-')
        {
            switch (argv[i][1])
            {
                case L's':
                    bScan = TRUE;
                    break;
                case L'd':
                    bDisconnect = TRUE;
                    break;
                case L'c':
                    if (i == argc - 1)
                    {
                        ConResPuts(StdOut, IDS_USAGE);
                        return FALSE;
                    }
                    bConnect = TRUE;
                    sSsid = argv[++i];
                    break;
                case L'w':
                    if (i == argc - 1)
                    {
                        ConResPuts(StdOut, IDS_USAGE);
                        return FALSE;
                    }
                    sWepKey = argv[++i];
                    break;
                case L'a':
                    bAdhoc = TRUE;
                    break;
                default :
                    ConResPuts(StdOut, IDS_USAGE);
                    return FALSE;
            }

        }
        else
        {
            ConResPuts(StdOut, IDS_USAGE);
            return FALSE;
        }
    }

    return TRUE;
}
