
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int INT ;
typedef int DWORD ;


 int ARRAYSIZE (int*) ;
 int ConFormatMessage (int ,int ) ;
 int ConInString (int*,int ) ;
 int ConInitStdStreams () ;
 int ConPuts (int ,char*) ;
 int ConResPrintf (int ,int ,int,...) ;
 int ConResPuts (int ,int ) ;
 scalar_t__ FALSE ;
 int GetCurrentDirectoryW (int,int*) ;
 int GetLastError () ;
 int GetVolumeInformationW (int*,int*,int ,int *,int *,int *,int *,int ) ;
 int HIWORD (int ) ;
 int IsValidPathName (int*) ;
 int* LOWORD (int ) ;
 int MAX_DRIVE_LENGTH ;
 int MAX_LABEL_LENGTH ;
 int MAX_PATH ;
 scalar_t__ PromptYesNo () ;
 int STRING_ERROR_INVALID_DRIVE ;
 int STRING_ERROR_INVALID_LABEL ;
 int STRING_LABEL_HELP ;
 int STRING_LABEL_TEXT1 ;
 int STRING_LABEL_TEXT2 ;
 int STRING_LABEL_TEXT3 ;
 int STRING_LABEL_TEXT4 ;
 int SetVolumeLabelW (int*,int*) ;
 int StdErr ;
 int StdOut ;
 int UNICODE_NULL ;
 int towupper (int) ;
 int wcscat (int*,...) ;
 scalar_t__ wcscmp (int*,char*) ;
 int wcscpy (int*,int*) ;
 scalar_t__ wcslen (int*) ;

int wmain(int argc, WCHAR *argv[])
{
    WCHAR szRootPath[] = L" :\\";
    WCHAR szBuffer[80];
    WCHAR szLabel[80];
    WCHAR szOldLabel[80];
    DWORD dwSerialNr;
    INT len, i;


    ConInitStdStreams();


    szLabel[0] = UNICODE_NULL;


    if (argc > 1 && wcscmp(argv[1], L"/?") == 0)
    {
        ConResPuts(StdOut, STRING_LABEL_HELP);
        return 0;
    }

    if (argc > 1)
    {
        len = 0;
        for (i = 1; i < argc; i++)
        {
            if (i > 1)
                len++;
            len += wcslen(argv[i]);
        }

        if (len > MAX_LABEL_LENGTH + MAX_DRIVE_LENGTH)
        {
            ConResPuts(StdOut, STRING_ERROR_INVALID_LABEL);
            return 1;
        }

        for (i = 1; i < argc; i++)
        {
            if (i > 1)
                wcscat(szBuffer, L" ");
            wcscat(szBuffer, argv[i]);
        }
    }

    if (wcslen(szBuffer) > 0)
    {
        if (szBuffer[1] == L':')
        {
            szRootPath[0] = towupper(szBuffer[0]);
            wcscpy(szLabel, &szBuffer[2]);
        }
        else
        {
            wcscpy(szLabel, szBuffer);
        }
    }

    if (wcslen(szLabel) > MAX_LABEL_LENGTH)
    {
        ConResPuts(StdOut, STRING_ERROR_INVALID_LABEL);
        return 1;
    }

    if (szRootPath[0] == L' ')
    {

        WCHAR szCurPath[MAX_PATH];
        GetCurrentDirectoryW(MAX_PATH, szCurPath);
        szRootPath[0] = szCurPath[0];
    }


    if (!IsValidPathName(szRootPath))
    {
        ConResPuts(StdErr, STRING_ERROR_INVALID_DRIVE);
        return 1;
    }

    if (wcslen(szLabel) == 0)
    {
        GetVolumeInformationW(szRootPath, szOldLabel, ARRAYSIZE(szOldLabel), &dwSerialNr,
                              ((void*)0), ((void*)0), ((void*)0), 0);


        if (szOldLabel[0] != UNICODE_NULL)
        {
            ConResPrintf(StdOut, STRING_LABEL_TEXT1, towupper(szRootPath[0]), szOldLabel);
        }
        else
        {
            ConResPrintf(StdOut, STRING_LABEL_TEXT2, towupper(szRootPath[0]));
        }


        ConResPrintf(StdOut, STRING_LABEL_TEXT3, HIWORD(dwSerialNr), LOWORD(dwSerialNr));

        ConResPuts(StdOut, STRING_LABEL_TEXT4);

        ConInString(szLabel, ARRAYSIZE(szLabel));
        ConPuts(StdOut, L"\n");

        if (wcslen(szLabel) == 0)
        {
            if (PromptYesNo() == FALSE)
                return 0;
        }
    }

    if (!SetVolumeLabelW(szRootPath, szLabel))
    {
        ConFormatMessage(StdOut, GetLastError());
        return 1;
    }

    return 0;
}
