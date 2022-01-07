
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef scalar_t__ REGEDIT_ACTION ;
typedef int* LPWSTR ;
typedef int BOOL ;


 scalar_t__ ACTION_ADD ;
 scalar_t__ ACTION_DELETE ;
 scalar_t__ ACTION_EXPORT ;
 scalar_t__ ACTION_UNDEF ;
 int FALSE ;
 int InfoMessageBox (int *,int,int ,int ) ;
 int MB_ICONINFORMATION ;
 int MB_OK ;
 int PerformRegAction (scalar_t__,int*,int ) ;
 int TRUE ;
 int error_unknown_switch (int,int*) ;
 int exit (int) ;
 scalar_t__ iswspace (int) ;
 int szTitle ;
 int towupper (int) ;
 int usage ;

BOOL ProcessCmdLine(LPWSTR lpCmdLine)
{
    BOOL silent = FALSE;
    REGEDIT_ACTION action = ACTION_UNDEF;
    LPWSTR s = lpCmdLine;
    WCHAR ch = *s;

    while (ch && ((ch == L'-') || (ch == L'/')))
    {
        WCHAR chu;
        WCHAR ch2;

        s++;
        ch = *s;
        ch2 = *(s + 1);
        chu = towupper(ch);
        if (!ch2 || iswspace(ch2))
        {
            if (chu == L'S')
            {

                silent = TRUE;
            }
            else if (chu == L'V')
            {

            }
            else
            {
                switch (chu)
                {
                    case L'D':
                        action = ACTION_DELETE;
                        break;
                    case L'E':
                        action = ACTION_EXPORT;
                        break;
                    case L'?':
                        InfoMessageBox(((void*)0), MB_OK | MB_ICONINFORMATION, szTitle, usage);
                        exit(3);
                        break;
                    default:
                        error_unknown_switch(chu, s);
                        break;
                }
            }
            s++;
        }
        else
        {
            if (ch2 == L':')
            {
                switch (chu)
                {
                    case L'L':

                    case L'R':
                        s += 2;
                        while (*s && !iswspace(*s))
                        {
                            s++;
                        }
                        break;
                    default:
                        error_unknown_switch(chu, s);
                        break;
                }
            }
            else
            {

                s--;
                break;
            }
        }

        ch = *s;
        while (ch && iswspace(ch))
        {
            s++;
            ch = *s;
        }
    }

    if (*s && action == ACTION_UNDEF)
        action = ACTION_ADD;

    if (action != ACTION_UNDEF)
        return PerformRegAction(action, s, silent);
    else
        return FALSE;
}
