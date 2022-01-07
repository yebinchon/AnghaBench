
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * cFileName; } ;
typedef TYPE_1__ WIN32_FIND_DATA ;
typedef int TCHAR ;
typedef int * LPTSTR ;
typedef int LPINT ;
typedef int * LPCTSTR ;
typedef scalar_t__ HANDLE ;
typedef scalar_t__ BOOL ;


 scalar_t__ FALSE ;
 int FindClose (scalar_t__) ;
 scalar_t__ FindFirstFile (int *,TYPE_1__*) ;
 scalar_t__ FindNextFile (scalar_t__,TYPE_1__*) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int WARN (char*) ;
 int _T (char) ;
 int _tcscat (int ,int *) ;
 int _tcscpy (int *,int *) ;
 int _tcslen (int *) ;
 int * _tcsrchr (int *,int ) ;
 scalar_t__ add_entry (int ,int ***,int *) ;
 int * cmd_alloc (int) ;
 int cmd_free (int *) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static BOOL expand (LPINT ac, LPTSTR **arg, LPCTSTR pattern)
{
    HANDLE hFind;
    WIN32_FIND_DATA FindData;
    BOOL ok;
    LPCTSTR pathend;
    LPTSTR dirpart, fullname;

    pathend = _tcsrchr (pattern, _T('\\'));
    if (((void*)0) != pathend)
    {
        dirpart = cmd_alloc((pathend - pattern + 2) * sizeof(TCHAR));
        if (!dirpart)
        {
            WARN("Cannot allocate memory for dirpart!\n");
            return FALSE;
        }
        memcpy(dirpart, pattern, pathend - pattern + 1);
        dirpart[pathend - pattern + 1] = _T('\0');
    }
    else
    {
        dirpart = ((void*)0);
    }
    hFind = FindFirstFile (pattern, &FindData);
    if (INVALID_HANDLE_VALUE != hFind)
    {
        do
        {
            if (((void*)0) != dirpart)
            {
                fullname = cmd_alloc((_tcslen(dirpart) + _tcslen(FindData.cFileName) + 1) * sizeof(TCHAR));
                if (!fullname)
                {
                    WARN("Cannot allocate memory for fullname!\n");
                    ok = FALSE;
                }
                else
                {
                    _tcscat (_tcscpy (fullname, dirpart), FindData.cFileName);
                    ok = add_entry(ac, arg, fullname);
                    cmd_free (fullname);
                }
            }
            else
            {
                ok = add_entry(ac, arg, FindData.cFileName);
            }
        } while (FindNextFile (hFind, &FindData) && ok);
        FindClose (hFind);
    }
    else
    {
        ok = add_entry(ac, arg, pattern);
    }

    if (((void*)0) != dirpart)
    {
        cmd_free (dirpart);
    }

    return ok;
}
