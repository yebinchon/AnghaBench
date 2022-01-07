
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int BOOL ;


 int ConResPuts (int ,int ) ;
 int FALSE ;
 int IDS_ILLEGAL_PARAM ;
 int StdErr ;
 int TRUE ;
 int bVerbose ;

BOOL ParseCommandLine(int argc, WCHAR *argv[])
{
    int i;






    for (i = 1; i < argc; i++)
    {
        switch (argv[i][0])
        {
        case L'-':
        case L'/':

            if (argv[i][1] == L'v')
            {
                bVerbose = TRUE;
                break;
            }

            else if (argv[i][1] == L'?')
            {

                return FALSE;
            }

        default:

            ConResPuts(StdErr, IDS_ILLEGAL_PARAM);
            return FALSE;
        }
    }

    return TRUE;
}
