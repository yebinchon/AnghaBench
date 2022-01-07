
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef char* LPWSTR ;
typedef int INT ;
typedef int BYTE ;


 int BlankArgument (int,int **) ;
 int ConInitStdStreams () ;
 scalar_t__ FALSE ;
 scalar_t__ GetArgument (char*,int,int **) ;
 int IDS_ERROR_1TIMES ;
 int IDS_ERROR_FQDN ;
 int IDS_ERROR_INVALIDARG ;
 int IDS_ERROR_INVALIDSYNTAX ;
 int IDS_ERROR_NH_LIST ;
 int IDS_ERROR_UPN ;
 int IDS_ERROR_VALUENOTALLOWED ;
 int IDS_ERROR_VALUEXPECTED ;
 int IDS_HELP ;
 int NameFullyQualifiedDN ;
 int NameSamCompatible ;
 int NameUserPrincipal ;
 scalar_t__ NoHeader ;
 int NoHeaderArgCount ;
 scalar_t__ PrintFormat ;
 int PrintFormatArgCount ;
 scalar_t__ TRUE ;
 int WAM_GROUPS ;
 int WAM_PRIV ;
 int WAM_USER ;
 int WhoamiFree (char*) ;
 char* WhoamiGetUser (int ) ;
 int WhoamiGroups () ;
 char* WhoamiLoadRcString (int ) ;
 int WhoamiLogonId () ;
 int WhoamiPriv () ;
 int WhoamiUser () ;
 scalar_t__ csv ;
 scalar_t__ list ;
 scalar_t__ table ;
 scalar_t__ wcsicmp (int *,char*) ;
 int wprintf (char*,...) ;

int wmain(int argc, WCHAR* argv[])
{




    INT i;
    BYTE WamBit = 0;


    ConInitStdStreams();





    if (argc == 1)
    {

        LPWSTR UserBuffer = WhoamiGetUser(NameSamCompatible);

        if (UserBuffer)
        {
            wprintf(L"%s\n", UserBuffer);
            WhoamiFree(UserBuffer);
            return 0;
        }
        else
        {
            return 1;
        }
    }


    for (i = 1; i < argc; i++)
    {
        if (wcsicmp(argv[i], L"/nh") == 0)
        {
            NoHeaderArgCount++;

            if (NoHeader == FALSE)
            {
                NoHeader = TRUE;

                BlankArgument(i, argv);
            }
        }
    }

    for (i = 1; i < argc; i++)
    {
        if (wcsicmp(argv[i], L"/fo") == 0)
        {
            if ((i + 1) < argc)
            {


                PrintFormatArgCount++;

                if (wcsicmp(argv[i + 1], L"table") == 0 && PrintFormat != table)
                {
                    PrintFormat = table;

                    BlankArgument(i, argv);
                    BlankArgument(i + 1, argv);
                }
                else if (wcsicmp(argv[i + 1], L"list") == 0 && PrintFormat != list)
                {
                    PrintFormat = list;

                    BlankArgument(i, argv);
                    BlankArgument(i + 1, argv);



                    if (PrintFormat == list && NoHeader != FALSE)
                    {
                        wprintf(WhoamiLoadRcString(IDS_ERROR_NH_LIST));
                        return 1;
                    }
                }
                else if (wcsicmp(argv[i + 1], L"csv") == 0 && PrintFormat != csv)
                {
                    PrintFormat = csv;

                    BlankArgument(i, argv);
                    BlankArgument(i + 1, argv);
                }

                else if (wcsicmp(argv[i + 1], L"/nh") == 0 || wcsicmp(argv[i + 1], L"/fo") == 0


                         || wcsicmp(argv[i + 1], L"/priv") == 0
                         || wcsicmp(argv[i + 1], L"/groups") == 0
                         || wcsicmp(argv[i + 1], L"/user") == 0
                         || wcsicmp(argv[i + 1], L"/all") == 0
                         || wcsicmp(argv[i + 1], L"") == 0)
                {
                    goto FoValueExpected;
                }
                else
                {
                    wprintf(WhoamiLoadRcString(IDS_ERROR_VALUENOTALLOWED), argv[i + 1]);
                    return 1;
                }
            }
            else
            {
                FoValueExpected:

                wprintf(WhoamiLoadRcString(IDS_ERROR_VALUEXPECTED));
                return 1;
            }
        }
    }

    if (NoHeaderArgCount >= 2)
    {
        wprintf(WhoamiLoadRcString(IDS_ERROR_1TIMES), L"/nh");
        return 1;
    }

    else if (NoHeaderArgCount == 1 && argc == 2)
    {
        return 0;
    }

    if (PrintFormatArgCount >= 2)
    {
        wprintf(WhoamiLoadRcString(IDS_ERROR_1TIMES), L"/fo");
        return 1;
    }

    else if (PrintFormatArgCount == 1 && argc == 3)
    {
        goto InvalidSyntax;
    }




    if (argc == 2)
    {

        if (wcsicmp(argv[1], L"/?") == 0)
        {
            wprintf(WhoamiLoadRcString(IDS_HELP));
            return 0;
        }

        else if (wcsicmp(argv[1], L"/upn") == 0)
        {
            LPWSTR UserBuffer = WhoamiGetUser(NameUserPrincipal);

            if (UserBuffer)
            {
                wprintf(L"%s\n", UserBuffer);
                WhoamiFree(UserBuffer);
                return 0;
            }
            else
            {
                wprintf(WhoamiLoadRcString(IDS_ERROR_UPN));
                return 1;
            }
        }

        else if (wcsicmp(argv[1], L"/fqdn") == 0)
        {
            LPWSTR UserBuffer = WhoamiGetUser(NameFullyQualifiedDN);

            if (UserBuffer)
            {
                wprintf(L"%s\n", UserBuffer);
                WhoamiFree(UserBuffer);
                return 0;
            }
            else
            {
                wprintf(WhoamiLoadRcString(IDS_ERROR_FQDN));
                return 1;
            }
        }

        else if (wcsicmp(argv[1], L"/logonid") == 0)
        {
            return WhoamiLogonId();
        }
    }





    for (i=1; i<argc; i++)
    {
        if ((wcsicmp(argv[i], L"/user") != 0) &&
            (wcsicmp(argv[i], L"/groups") != 0) &&
            (wcsicmp(argv[i], L"/priv") != 0) &&
            (wcsicmp(argv[i], L"/all") != 0) &&
            (wcsicmp(argv[i], L"") != 0))
        {
            wprintf(WhoamiLoadRcString(IDS_ERROR_INVALIDARG), argv[i]);
            return 1;
        }
    }

    if (GetArgument(L"/user", argc, argv))
    {
        WamBit |= 1<<0;
    }

    if (GetArgument(L"/groups", argc, argv))
    {
        WamBit |= 1<<1;
    }

    if (GetArgument(L"/priv", argc, argv))
    {
        WamBit |= 1<<2;
    }

    if (GetArgument(L"/all", argc, argv))
    {

        if ((WamBit & (1<<0 | 1<<1 | 1<<2)) == 0)
        {
            WamBit |= (1<<0 | 1<<1 | 1<<2);
        }
        else
        {
            goto InvalidSyntax;
        }
    }

    if (WamBit & 1<<0)
    {
        WhoamiUser();
    }
    if (WamBit & 1<<1)
    {
        WhoamiGroups();
    }
    if (WamBit & 1<<2)
    {
        WhoamiPriv();
    }

    return 0;

InvalidSyntax:
    wprintf(WhoamiLoadRcString(IDS_ERROR_INVALIDSYNTAX));
    return 1;
}
