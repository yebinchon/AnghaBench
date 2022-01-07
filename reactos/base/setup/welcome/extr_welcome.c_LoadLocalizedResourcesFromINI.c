
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* szArgs; scalar_t__* szDesc; scalar_t__* szTitle; scalar_t__* szText; scalar_t__* szCommand; } ;
typedef TYPE_1__ TOPIC ;
typedef scalar_t__ TCHAR ;
typedef scalar_t__* LPTSTR ;
typedef int LCID ;
typedef int DWORD ;
typedef int BOOL ;


 int ARRAYSIZE (scalar_t__*) ;
 TYPE_1__* AddNewTopicEx (scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*) ;
 int BUFFER_SIZE ;
 int FALSE ;
 int FILE_ATTRIBUTE_DIRECTORY ;
 int GetFileAttributes (scalar_t__*) ;
 scalar_t__ GetLocaleName (int ,scalar_t__*,int ) ;
 int GetPrivateProfileSectionNames (scalar_t__*,int,scalar_t__*) ;
 int GetPrivateProfileString (scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,int ,scalar_t__*) ;
 int GetProcessHeap () ;
 scalar_t__* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,scalar_t__*) ;
 int INVALID_FILE_ATTRIBUTES ;
 int LOCALE_NAME_MAX_LENGTH ;
 int MAX_PATH ;
 int StringCchCopy (scalar_t__*,int ,scalar_t__*) ;
 int StringCchPrintf (scalar_t__*,int ,scalar_t__*,scalar_t__*,scalar_t__*) ;
 scalar_t__* TEXT (char*) ;
 int TRUE ;
 int TranslateEscapes (scalar_t__*) ;
 scalar_t__ _tcslen (scalar_t__*) ;
 scalar_t__ _tcsnicmp (scalar_t__*,scalar_t__*,int) ;
 scalar_t__* szAppTitle ;
 scalar_t__* szDefaultDesc ;
 scalar_t__* szDefaultTitle ;

__attribute__((used)) static BOOL
LoadLocalizedResourcesFromINI(LCID Locale, LPTSTR lpResPath)
{
    DWORD dwRet;
    DWORD dwAttribs;
    DWORD dwSize;
    TCHAR szBuffer[LOCALE_NAME_MAX_LENGTH];
    TCHAR szIniPath[MAX_PATH];
    LPTSTR lpszSections = ((void*)0), lpszSection = ((void*)0);
    LPTSTR lpszCommand, lpszAction;
    TOPIC newTopic, *pTopic;


    dwRet = (DWORD)GetLocaleName(Locale, szBuffer, ARRAYSIZE(szBuffer));
    if (!dwRet)
    {

        StringCchCopy(szBuffer, ARRAYSIZE(szBuffer), TEXT("en-US"));
    }


    StringCchPrintf(szIniPath, ARRAYSIZE(szIniPath),
                    TEXT("%s\\%s.ini"), lpResPath, szBuffer);


    dwAttribs = GetFileAttributes(szIniPath);
    if ((dwAttribs == INVALID_FILE_ATTRIBUTES) ||
        (dwAttribs & FILE_ATTRIBUTE_DIRECTORY))
    {
        StringCchCopy(szBuffer, ARRAYSIZE(szBuffer), TEXT("en-US"));

        StringCchPrintf(szIniPath, ARRAYSIZE(szIniPath),
                        TEXT("%s\\%s.ini"), lpResPath, szBuffer);
    }


    dwAttribs = GetFileAttributes(szIniPath);
    if ((dwAttribs == INVALID_FILE_ATTRIBUTES) ||
        (dwAttribs & FILE_ATTRIBUTE_DIRECTORY))
    {
        return FALSE;
    }


    GetPrivateProfileString(TEXT("Defaults"), TEXT("AppTitle"), TEXT("ReactOS - Welcome") ,
                            szAppTitle, ARRAYSIZE(szAppTitle), szIniPath);
    GetPrivateProfileString(TEXT("Defaults"), TEXT("DefaultTopicTitle"), TEXT("") ,
                            szDefaultTitle, ARRAYSIZE(szDefaultTitle), szIniPath);
    if (!GetPrivateProfileString(TEXT("Defaults"), TEXT("DefaultTopicDescription"), TEXT("") ,
                                 szDefaultDesc, ARRAYSIZE(szDefaultDesc), szIniPath))
    {
        *szDefaultDesc = 0;
    }
    else
    {
        TranslateEscapes(szDefaultDesc);
    }


    for (dwSize = BUFFER_SIZE; ; dwSize += BUFFER_SIZE)
    {
        lpszSections = HeapAlloc(GetProcessHeap(), 0, dwSize * sizeof(TCHAR));
        if (!lpszSections)
            return TRUE;
        dwRet = GetPrivateProfileSectionNames(lpszSections, dwSize, szIniPath);
        if (dwRet < dwSize - 2)
            break;
        HeapFree(GetProcessHeap(), 0, lpszSections);
    }


    lpszSection = lpszSections;
    for (; lpszSection && *lpszSection; lpszSection += (_tcslen(lpszSection) + 1))
    {

        if (_tcsnicmp(lpszSection, TEXT("Topic"), 5) != 0)
            continue;

        lpszCommand = ((void*)0), lpszAction = ((void*)0);


        GetPrivateProfileString(lpszSection, TEXT("MenuText"), TEXT("") ,
                                newTopic.szText, ARRAYSIZE(newTopic.szText), szIniPath);
        GetPrivateProfileString(lpszSection, TEXT("Title"), TEXT("") ,
                                newTopic.szTitle, ARRAYSIZE(newTopic.szTitle), szIniPath);
        GetPrivateProfileString(lpszSection, TEXT("Description"), TEXT("") ,
                                newTopic.szDesc, ARRAYSIZE(newTopic.szDesc), szIniPath);

        GetPrivateProfileString(lpszSection, TEXT("ConfigCommand"), TEXT("") ,
                                newTopic.szCommand, ARRAYSIZE(newTopic.szCommand), szIniPath);


        if (*newTopic.szCommand)
        {
            lpszCommand = newTopic.szCommand;
            GetPrivateProfileString(lpszSection, TEXT("ConfigArgs"), TEXT("") ,
                                    newTopic.szArgs, ARRAYSIZE(newTopic.szArgs), szIniPath);
        }

        else
        {
            lpszAction = newTopic.szCommand;
            GetPrivateProfileString(lpszSection, TEXT("Action"), TEXT("") ,
                                    newTopic.szCommand, ARRAYSIZE(newTopic.szCommand), szIniPath);
        }


        pTopic = AddNewTopicEx(newTopic.szText,
                               newTopic.szTitle,
                               newTopic.szDesc,
                               lpszCommand,
                               newTopic.szArgs,
                               lpszAction);
        if (!pTopic)
            break;
    }

    HeapFree(GetProcessHeap(), 0, lpszSections);

    return TRUE;
}
