
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int buffer ;
typedef int WCHAR ;
typedef int Value ;
struct TYPE_7__ {scalar_t__ MaximumLength; scalar_t__ Length; void* Buffer; } ;
typedef TYPE_2__ UNICODE_STRING ;
struct TYPE_6__ {void* bottom; void* right; void* top; void* left; } ;
struct TYPE_8__ {int length; int showCmd; TYPE_1__ rcNormalPosition; } ;
struct TYPE_9__ {int bShowDetailsPane; int bShowGrid; int bSaveSettings; int bNewestEventsFirst; int nVSplitPos; int nHSplitPos; TYPE_3__ wpPos; } ;
typedef void* PWSTR ;
typedef int LPBYTE ;
typedef scalar_t__ LONG ;
typedef int HKEY ;
typedef scalar_t__ DWORD ;
typedef void* BOOL ;


 void* CW_USEDEFAULT ;
 scalar_t__ ERROR_SUCCESS ;
 int EVNTVWR_PARAM_KEY ;
 void* FALSE ;
 int HKEY_CURRENT_USER ;
 int KEY_READ ;
 int KEY_WRITE ;
 scalar_t__ REG_DWORD ;
 int REG_OPTION_NON_VOLATILE ;
 scalar_t__ REG_SZ ;
 int RegCloseKey (int ) ;
 scalar_t__ RegCreateKeyExW (int ,int ,int ,int *,int ,int,int *,int *,int *) ;
 scalar_t__ RegQueryValueExW (int ,char*,int *,scalar_t__*,int ,scalar_t__*) ;
 int RtlUnicodeStringToInteger (TYPE_2__*,int,scalar_t__*) ;
 TYPE_4__ Settings ;
 void* TRUE ;
 int UNICODE_NULL ;
 int ZeroMemory (TYPE_3__*,int) ;
 int swscanf (int *,char*,void**,void**,void**,void**,int*) ;

BOOL
LoadSettings(int nDefCmdShow)
{
    HKEY hKeyEventVwr;
    LONG Result;
    DWORD dwSize;
    DWORD dwType;
    DWORD Value;
    UNICODE_STRING ValueU;
    WCHAR buffer[100];


    Settings.bShowDetailsPane = TRUE;
    Settings.bShowGrid = FALSE;
    Settings.bSaveSettings = TRUE;
    Settings.bNewestEventsFirst = TRUE;
    Settings.nVSplitPos = 250;
    Settings.nHSplitPos = 250;
    ZeroMemory(&Settings.wpPos, sizeof(Settings.wpPos));
    Settings.wpPos.length = sizeof(Settings.wpPos);
    Settings.wpPos.rcNormalPosition.left = CW_USEDEFAULT;
    Settings.wpPos.rcNormalPosition.top = CW_USEDEFAULT;
    Settings.wpPos.rcNormalPosition.right = CW_USEDEFAULT;
    Settings.wpPos.rcNormalPosition.bottom = CW_USEDEFAULT;


    if (RegCreateKeyExW(HKEY_CURRENT_USER,
                        EVNTVWR_PARAM_KEY,
                        0,
                        ((void*)0),
                        REG_OPTION_NON_VOLATILE,
                        KEY_READ | KEY_WRITE,
                        ((void*)0),
                        &hKeyEventVwr,
                        ((void*)0)) != ERROR_SUCCESS)
    {
        return FALSE;
    }





    dwSize = sizeof(Value);
    Result = RegQueryValueExW(hKeyEventVwr, L"DetailsPane", ((void*)0), &dwType, (LPBYTE)&Value, &dwSize);
    if ((Result == ERROR_SUCCESS) && (dwType == REG_SZ || dwType == REG_DWORD))
    {
        if (dwType == REG_SZ)
        {
            ValueU.Buffer = (PWSTR)&Value;
            ValueU.Length = ValueU.MaximumLength = dwSize;
            RtlUnicodeStringToInteger(&ValueU, 10, &Value);
        }
        Settings.bShowDetailsPane = !!Value;
    }

    dwSize = sizeof(Value);
    Result = RegQueryValueExW(hKeyEventVwr, L"ShowGrid", ((void*)0), &dwType, (LPBYTE)&Value, &dwSize);
    if ((Result == ERROR_SUCCESS) && (dwType == REG_SZ || dwType == REG_DWORD))
    {
        if (dwType == REG_SZ)
        {
            ValueU.Buffer = (PWSTR)&Value;
            ValueU.Length = ValueU.MaximumLength = dwSize;
            RtlUnicodeStringToInteger(&ValueU, 10, &Value);
        }
        Settings.bShowGrid = !!Value;
    }

    dwSize = sizeof(Value);
    Result = RegQueryValueExW(hKeyEventVwr, L"SortOrder", ((void*)0), &dwType, (LPBYTE)&Value, &dwSize);
    if ((Result == ERROR_SUCCESS) && (dwType == REG_SZ || dwType == REG_DWORD))
    {
        if (dwType == REG_SZ)
        {
            ValueU.Buffer = (PWSTR)&Value;
            ValueU.Length = ValueU.MaximumLength = dwSize;
            RtlUnicodeStringToInteger(&ValueU, 10, &Value);
        }
        Settings.bNewestEventsFirst = !!Value;
    }


    dwSize = sizeof(Value);
    Result = RegQueryValueExW(hKeyEventVwr, L"VSplitPos", ((void*)0), &dwType, (LPBYTE)&Value, &dwSize);
    if ((Result == ERROR_SUCCESS) && (dwType == REG_SZ || dwType == REG_DWORD))
    {
        if (dwType == REG_SZ)
        {
            ValueU.Buffer = (PWSTR)&Value;
            ValueU.Length = ValueU.MaximumLength = dwSize;
            RtlUnicodeStringToInteger(&ValueU, 10, &Value);
        }
        Settings.nVSplitPos = Value;
    }

    dwSize = sizeof(Value);
    Result = RegQueryValueExW(hKeyEventVwr, L"HSplitPos", ((void*)0), &dwType, (LPBYTE)&Value, &dwSize);
    if ((Result == ERROR_SUCCESS) && (dwType == REG_SZ || dwType == REG_DWORD))
    {
        if (dwType == REG_SZ)
        {
            ValueU.Buffer = (PWSTR)&Value;
            ValueU.Length = ValueU.MaximumLength = dwSize;
            RtlUnicodeStringToInteger(&ValueU, 10, &Value);
        }
        Settings.nHSplitPos = Value;
    }


    dwSize = sizeof(buffer);
    Result = RegQueryValueExW(hKeyEventVwr, L"Window", ((void*)0), &dwType, (LPBYTE)buffer, &dwSize);
    if ((Result != ERROR_SUCCESS) || (dwType != REG_SZ))
        buffer[0] = UNICODE_NULL;

    if (swscanf(buffer, L"%d %d %d %d %d",
                &Settings.wpPos.rcNormalPosition.left,
                &Settings.wpPos.rcNormalPosition.top,
                &Settings.wpPos.rcNormalPosition.right,
                &Settings.wpPos.rcNormalPosition.bottom,
                &Settings.wpPos.showCmd) != 5)
    {

        Settings.wpPos.rcNormalPosition.left = CW_USEDEFAULT;
        Settings.wpPos.rcNormalPosition.top = CW_USEDEFAULT;
        Settings.wpPos.rcNormalPosition.right = CW_USEDEFAULT;
        Settings.wpPos.rcNormalPosition.bottom = CW_USEDEFAULT;
        Settings.wpPos.showCmd = nDefCmdShow;
    }

    dwSize = sizeof(Value);
    Result = RegQueryValueExW(hKeyEventVwr, L"SaveSettings", ((void*)0), &dwType, (LPBYTE)&Value, &dwSize);
    if ((Result == ERROR_SUCCESS) && (dwType == REG_SZ || dwType == REG_DWORD))
    {
        if (dwType == REG_SZ)
        {
            ValueU.Buffer = (PWSTR)&Value;
            ValueU.Length = ValueU.MaximumLength = dwSize;
            RtlUnicodeStringToInteger(&ValueU, 10, &Value);
        }
        Settings.bSaveSettings = !!Value;
    }

    RegCloseKey(hKeyEventVwr);
    return TRUE;
}
