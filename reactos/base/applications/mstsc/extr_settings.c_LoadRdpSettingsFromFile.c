
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int PRDPSETTINGS ;
typedef int * LPWSTR ;
typedef int * LPITEMIDLIST ;
typedef scalar_t__ HRESULT ;
typedef scalar_t__ HANDLE ;
typedef int BOOL ;


 int CSIDL_PERSONAL ;
 int CloseRdpFile (scalar_t__) ;
 int CoTaskMemFree (int *) ;
 int FALSE ;
 int GetProcessHeap () ;
 int HeapFree (int ,int ,int *) ;
 int MAX_PATH ;
 scalar_t__ OpenRdpFile (int *,int ) ;
 int ParseSettings (int ,int *) ;
 int * ReadRdpFile (scalar_t__) ;
 scalar_t__ SHGetFolderLocation (int *,int ,int *,int ,int **) ;
 scalar_t__ SHGetPathFromIDListW (int *,int *) ;
 scalar_t__ S_OK ;
 int TRUE ;
 int wcscat (int *,char*) ;

BOOL
LoadRdpSettingsFromFile(PRDPSETTINGS pRdpSettings,
                        LPWSTR lpFile)
{
    WCHAR pszPath[MAX_PATH];
    HANDLE hFile;
    BOOL bRet = FALSE;


    if (lpFile == ((void*)0))
    {
        HRESULT hr;
        LPITEMIDLIST lpidl= ((void*)0);

        hr = SHGetFolderLocation(((void*)0),
                                 CSIDL_PERSONAL,
                                 ((void*)0),
                                 0,
                                 &lpidl);
        if (hr == S_OK)
        {
            if (SHGetPathFromIDListW(lpidl, pszPath))
            {
                wcscat(pszPath, L"\\Default.rdp");
                lpFile = pszPath;
                CoTaskMemFree(lpidl);
            }
        }
    }

    if (lpFile)
    {
        LPWSTR lpBuffer = ((void*)0);

        hFile = OpenRdpFile(lpFile, FALSE);
        if (hFile)
        {
            lpBuffer = ReadRdpFile(hFile);
            if (lpBuffer)
            {
                ParseSettings(pRdpSettings, lpBuffer);

                HeapFree(GetProcessHeap(),
                         0,
                         lpBuffer);

                bRet = TRUE;
            }

            CloseRdpFile(hFile);
        }
    }

    return bRet;
}
