
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int cbSize; int lpszPort; int lpszActivePort; } ;
struct TYPE_4__ {void* bSoundOnActivation; void* bWarningSounds; TYPE_2__ serialKeys; int szPort; int szActivePort; TYPE_2__ accessTimeout; TYPE_2__ mouseKeys; TYPE_2__ bShowSounds; TYPE_2__ ssSoundSentry; int uCaretBlinkTime; TYPE_2__ uCaretWidth; TYPE_2__ highContrast; TYPE_2__ bKeyboardPref; TYPE_2__ toggleKeys; TYPE_2__ filterKeys; TYPE_2__ stickyKeys; } ;
typedef int TOGGLEKEYS ;
typedef int STICKYKEYS ;
typedef int SOUNDSENTRY ;
typedef int SERIALKEYS ;
typedef TYPE_1__* PGLOBAL_DATA ;
typedef int MOUSEKEYS ;
typedef int LPBYTE ;
typedef scalar_t__ LONG ;
typedef int HKEY ;
typedef int HIGHCONTRAST ;
typedef int FILTERKEYS ;
typedef int DWORD ;
typedef void* BOOL ;
typedef int ACCESSTIMEOUT ;


 scalar_t__ ERROR_SUCCESS ;
 void* FALSE ;
 int GetCaretBlinkTime () ;
 int HKEY_CURRENT_USER ;
 int KEY_EXECUTE ;
 int KEY_QUERY_VALUE ;
 int REG_OPTION_NON_VOLATILE ;
 int RegCloseKey (int ) ;
 scalar_t__ RegCreateKeyEx (int ,int ,int ,int *,int ,int,int *,int *,int*) ;
 scalar_t__ RegQueryValueEx (int ,int ,int *,int *,int ,int*) ;
 int SPI_GETACCESSTIMEOUT ;
 int SPI_GETCARETWIDTH ;
 int SPI_GETFILTERKEYS ;
 int SPI_GETHIGHCONTRAST ;
 int SPI_GETKEYBOARDPREF ;
 int SPI_GETMOUSEKEYS ;
 int SPI_GETSERIALKEYS ;
 int SPI_GETSHOWSOUNDS ;
 int SPI_GETSOUNDSENTRY ;
 int SPI_GETSTICKYKEYS ;
 int SPI_GETTOGGLEKEYS ;
 int SystemParametersInfo (int ,int,TYPE_2__*,int ) ;
 void* TRUE ;
 int _T (char*) ;

__attribute__((used)) static BOOL
ReadSettings(PGLOBAL_DATA pGlobalData)
{
    DWORD dwDisposition;
    DWORD dwLength;
    HKEY hKey;
    LONG lError;


    pGlobalData->stickyKeys.cbSize = sizeof(STICKYKEYS);
    if (!SystemParametersInfo(SPI_GETSTICKYKEYS,
                              sizeof(STICKYKEYS),
                              &pGlobalData->stickyKeys,
                              0))
        return FALSE;


    pGlobalData->filterKeys.cbSize = sizeof(FILTERKEYS);
    if (!SystemParametersInfo(SPI_GETFILTERKEYS,
                              sizeof(FILTERKEYS),
                              &pGlobalData->filterKeys,
                              0))
        return FALSE;


    pGlobalData->toggleKeys.cbSize = sizeof(TOGGLEKEYS);
    if (!SystemParametersInfo(SPI_GETTOGGLEKEYS,
                              sizeof(TOGGLEKEYS),
                              &pGlobalData->toggleKeys,
                              0))
        return FALSE;


    if (!SystemParametersInfo(SPI_GETKEYBOARDPREF,
                              0,
                              &pGlobalData->bKeyboardPref,
                              0))
        return FALSE;


    pGlobalData->highContrast.cbSize = sizeof(HIGHCONTRAST);
    SystemParametersInfo(SPI_GETHIGHCONTRAST,
                         sizeof(HIGHCONTRAST),
                         &pGlobalData->highContrast,
                         0);

    SystemParametersInfo(SPI_GETCARETWIDTH,
                         0,
                         &pGlobalData->uCaretWidth,
                         0);

    pGlobalData->uCaretBlinkTime = GetCaretBlinkTime();


    pGlobalData->ssSoundSentry.cbSize = sizeof(SOUNDSENTRY);
    SystemParametersInfo(SPI_GETSOUNDSENTRY,
                         sizeof(SOUNDSENTRY),
                         &pGlobalData->ssSoundSentry,
                         0);

    SystemParametersInfo(SPI_GETSHOWSOUNDS,
                         0,
                         &pGlobalData->bShowSounds,
                         0);


    pGlobalData->mouseKeys.cbSize = sizeof(MOUSEKEYS);
    SystemParametersInfo(SPI_GETMOUSEKEYS,
                         sizeof(MOUSEKEYS),
                         &pGlobalData->mouseKeys,
                         0);


    pGlobalData->accessTimeout.cbSize = sizeof(ACCESSTIMEOUT);
    SystemParametersInfo(SPI_GETACCESSTIMEOUT,
                         sizeof(ACCESSTIMEOUT),
                         &pGlobalData->accessTimeout,
                         0);


    pGlobalData->serialKeys.cbSize = sizeof(SERIALKEYS);
    pGlobalData->serialKeys.lpszActivePort = pGlobalData->szActivePort;
    pGlobalData->serialKeys.lpszPort = pGlobalData->szPort;
    SystemParametersInfo(SPI_GETSERIALKEYS,
                         sizeof(SERIALKEYS),
                         &pGlobalData->serialKeys,
                         0);

    pGlobalData->bWarningSounds = TRUE;
    pGlobalData->bSoundOnActivation = TRUE;

    lError = RegCreateKeyEx(HKEY_CURRENT_USER,
                            _T("Control Panel\\Accessibility"),
                            0,
                            ((void*)0),
                            REG_OPTION_NON_VOLATILE,
                            KEY_EXECUTE | KEY_QUERY_VALUE,
                            ((void*)0),
                            &hKey,
                            &dwDisposition);
    if (lError != ERROR_SUCCESS)
        return TRUE;

    dwLength = sizeof(BOOL);
    lError = RegQueryValueEx(hKey,
                             _T("Warning Sounds"),
                             ((void*)0),
                             ((void*)0),
                             (LPBYTE)&pGlobalData->bWarningSounds,
                             &dwLength);
    if (lError != ERROR_SUCCESS)
        pGlobalData->bWarningSounds = TRUE;

    dwLength = sizeof(BOOL);
    lError = RegQueryValueEx(hKey,
                             _T("Sound On Activation"),
                             ((void*)0),
                             ((void*)0),
                             (LPBYTE)&pGlobalData->bSoundOnActivation,
                             &dwLength);
    if (lError != ERROR_SUCCESS)
        pGlobalData->bSoundOnActivation = TRUE;

    RegCloseKey(hKey);

    return TRUE;
}
