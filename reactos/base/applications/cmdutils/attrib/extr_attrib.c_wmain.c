
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef char* LPWSTR ;
typedef int INT ;
typedef int DWORD ;
typedef int BOOL ;


 int ChangeAttribute (int*,int*,int,int,int ,int ) ;
 int ConInitStdStreams () ;
 int ConResPrintf (int ,int ,int*) ;
 int ConResPuts (int ,int ) ;
 int FALSE ;
 int FILE_ATTRIBUTE_ARCHIVE ;
 int FILE_ATTRIBUTE_HIDDEN ;
 int FILE_ATTRIBUTE_READONLY ;
 int FILE_ATTRIBUTE_SYSTEM ;
 int GetCurrentDirectory (int,int*) ;
 int GetFullPathName (int*,int,int*,int *) ;
 int MAX_PATH ;
 int PrintAttribute (int*,int*,int ) ;
 int STRING_ATTRIB_HELP ;
 int STRING_ERROR_INVALID_PARAM_FORMAT ;
 int StdErr ;
 int StdOut ;
 int TRUE ;
 int UNICODE_NULL ;
 int towupper (int) ;
 scalar_t__ wcscmp (int*,char*) ;
 int wcscpy (int*,char*) ;
 scalar_t__ wcsicmp (int*,char*) ;
 int wcslen (int*) ;
 char* wcsrchr (int*,int) ;

int wmain(int argc, WCHAR *argv[])
{
    INT i;
    WCHAR szPath[MAX_PATH];
    WCHAR szFileName [MAX_PATH];
    BOOL bRecurse = FALSE;
    BOOL bDirectories = FALSE;
    DWORD dwAttrib = 0;
    DWORD dwMask = 0;


    ConInitStdStreams();


    if (argc > 1 && wcscmp(argv[1], L"/?") == 0)
    {
        ConResPuts(StdOut, STRING_ATTRIB_HELP);
        return 0;
    }


    for (i = 1; i < argc; i++)
    {
        if (wcsicmp(argv[i], L"/s") == 0)
            bRecurse = TRUE;
        else if (wcsicmp(argv[i], L"/d") == 0)
            bDirectories = TRUE;
    }


    for (i = 1; i < argc; i++)
    {
        if (*argv[i] == L'+')
        {
            if (wcslen(argv[i]) != 2)
            {
                ConResPrintf(StdErr, STRING_ERROR_INVALID_PARAM_FORMAT, argv[i]);
                return -1;
            }

            switch (towupper(argv[i][1]))
            {
                case L'A':
                    dwMask |= FILE_ATTRIBUTE_ARCHIVE;
                    dwAttrib |= FILE_ATTRIBUTE_ARCHIVE;
                    break;

                case L'H':
                    dwMask |= FILE_ATTRIBUTE_HIDDEN;
                    dwAttrib |= FILE_ATTRIBUTE_HIDDEN;
                    break;

                case L'R':
                    dwMask |= FILE_ATTRIBUTE_READONLY;
                    dwAttrib |= FILE_ATTRIBUTE_READONLY;
                    break;

                case L'S':
                    dwMask |= FILE_ATTRIBUTE_SYSTEM;
                    dwAttrib |= FILE_ATTRIBUTE_SYSTEM;
                    break;

                default:
                    ConResPrintf(StdErr, STRING_ERROR_INVALID_PARAM_FORMAT, argv[i]);
                    return -1;
            }
        }
        else if (*argv[i] == L'-')
        {
            if (wcslen(argv[i]) != 2)
            {
                ConResPrintf(StdErr, STRING_ERROR_INVALID_PARAM_FORMAT, argv[i]);
                return -1;
            }

            switch (towupper(argv[i][1]))
            {
                case L'A':
                    dwMask |= FILE_ATTRIBUTE_ARCHIVE;
                    dwAttrib &= ~FILE_ATTRIBUTE_ARCHIVE;
                    break;

                case L'H':
                    dwMask |= FILE_ATTRIBUTE_HIDDEN;
                    dwAttrib &= ~FILE_ATTRIBUTE_HIDDEN;
                    break;

                case L'R':
                    dwMask |= FILE_ATTRIBUTE_READONLY;
                    dwAttrib &= ~FILE_ATTRIBUTE_READONLY;
                    break;

                case L'S':
                    dwMask |= FILE_ATTRIBUTE_SYSTEM;
                    dwAttrib &= ~FILE_ATTRIBUTE_SYSTEM;
                    break;

                default:
                    ConResPrintf(StdErr, STRING_ERROR_INVALID_PARAM_FORMAT, argv[i]);
                    return -1;
            }
        }
    }

    if (argc == 1)
    {
        DWORD len;

        len = GetCurrentDirectory(MAX_PATH, szPath);
        if (szPath[len-1] != L'\\')
        {
            szPath[len] = L'\\';
            szPath[len + 1] = UNICODE_NULL;
        }
        wcscpy(szFileName, L"*.*");
        PrintAttribute(szPath, szFileName, bRecurse);
        return 0;
    }


    for (i = 1; i < argc; i++)
    {
        if ((*argv[i] != L'+') && (*argv[i] != L'-') && (*argv[i] != L'/'))
        {
            LPWSTR p;

            GetFullPathName(argv[i], MAX_PATH, szPath, ((void*)0));
            p = wcsrchr(szPath, L'\\') + 1;
            wcscpy(szFileName, p);
            *p = L'\0';

            if (dwMask == 0)
                PrintAttribute(szPath, szFileName, bRecurse);
            else
                ChangeAttribute(szPath, szFileName, dwMask,
                         dwAttrib, bRecurse, bDirectories);
        }
    }

    return 0;
}
