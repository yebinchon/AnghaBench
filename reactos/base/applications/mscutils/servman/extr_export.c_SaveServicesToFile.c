
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int newl ;
typedef int WCHAR ;
struct TYPE_4__ {int hListView; } ;
typedef TYPE_1__* PMAIN_WND_INFO ;
typedef int LPCWSTR ;
typedef scalar_t__ INT ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;
typedef int BOOL ;


 int CREATE_ALWAYS ;
 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFileW (int ,int ,int ,int *,int ,int ,int *) ;
 int FALSE ;
 int FILE_ATTRIBUTE_NORMAL ;
 int GENERIC_WRITE ;
 int GetTextFromListView (TYPE_1__*,int*,scalar_t__,scalar_t__) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 scalar_t__ ListView_GetItemCount (int ) ;
 int TRUE ;
 int WriteFile (scalar_t__,int*,int,int*,int *) ;

__attribute__((used)) static BOOL
SaveServicesToFile(PMAIN_WND_INFO Info,
                   LPCWSTR pszFileName)
{
    HANDLE hFile;
    BOOL bSuccess = FALSE;

    hFile = CreateFileW(pszFileName,
                       GENERIC_WRITE,
                       0,
                       ((void*)0),
                       CREATE_ALWAYS,
                       FILE_ATTRIBUTE_NORMAL,
                       ((void*)0));

    if(hFile != INVALID_HANDLE_VALUE)
    {
        WCHAR LVText[500];
        WCHAR newl[2] = {L'\r', L'\n'};
        WCHAR tab = L'\t';
        DWORD dwTextLength, dwWritten;
        INT NumListedServ = 0;
        INT i, k;

        NumListedServ = ListView_GetItemCount(Info->hListView);

        for (i=0; i < NumListedServ; i++)
        {
            for (k=0; k<5; k++)
            {
                dwTextLength = GetTextFromListView(Info,
                                                   LVText,
                                                   i,
                                                   k);
                if (dwTextLength != 0)
                {
                    WriteFile(hFile,
                              LVText,
                              sizeof(WCHAR) * dwTextLength,
                              &dwWritten,
                              ((void*)0));

                    WriteFile(hFile,
                              &tab,
                              sizeof(WCHAR),
                              &dwWritten,
                              ((void*)0));
                }
            }
            WriteFile(hFile,
                      newl,
                      sizeof(newl),
                      &dwWritten,
                      ((void*)0));
        }

        CloseHandle(hFile);
        bSuccess = TRUE;
    }

    return bSuccess;
}
