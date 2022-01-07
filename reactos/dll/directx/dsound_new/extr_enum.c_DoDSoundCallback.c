
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef scalar_t__ UINT ;
typedef char* LPWSTR ;
typedef int LPVOID ;
typedef char* LPSTR ;
typedef int LPGUID ;
typedef int (* LPDSENUMCALLBACKW ) (int ,char*,char*,int ) ;
typedef int (* LPDSENUMCALLBACKA ) (int ,char*,char*,int ) ;
typedef int DriverNameA ;
typedef int Buffer ;
typedef int BOOL ;


 int ASSERT (char*) ;
 int CP_ACP ;
 int FALSE ;
 int LoadResourceString (scalar_t__,int ,int,int ,int ) ;
 int TRUE ;
 int WideCharToMultiByte (int ,int ,char*,int,char*,int,int *,int *) ;
 int wcscpy (char*,char*) ;

BOOL
DoDSoundCallback(
    LPDSENUMCALLBACKA lpDSEnumCallbackA,
    LPDSENUMCALLBACKW lpDSEnumCallbackW,
    LPGUID DeviceGuid,
    UINT ResourceId,
    LPWSTR ProductName,
    LPWSTR DriverName,
    LPVOID lpContext)
{
    WCHAR Buffer[200] = {0};
    char DriverNameA[200];

    static LPWSTR SoundDriverW = L"Primary Sound Driver";
    static LPWSTR SoundDriverA = L"Primary Sound Driver";

    if (lpDSEnumCallbackW)
    {
        if (ResourceId)
        {

            Buffer[0] = 0;
            LoadResourceString(ResourceId, (LPVOID)Buffer, sizeof(Buffer)/sizeof(WCHAR), (LPVOID)SoundDriverW, TRUE);
            Buffer[(sizeof(Buffer)/sizeof(WCHAR))-1] = '\0';
        }
        else
        {

            ASSERT(ProductName);
            wcscpy(Buffer, ProductName);
        }


        return lpDSEnumCallbackW(DeviceGuid, Buffer, DriverName, lpContext);
    }
    else
    {
        if (ResourceId)
        {

            Buffer[0] = 0;
            LoadResourceString(ResourceId, (LPVOID)Buffer, sizeof(Buffer)/sizeof(char), (LPVOID)SoundDriverA, FALSE);
            Buffer[(sizeof(Buffer)/sizeof(WCHAR))-1] = 0;
        }
        else
        {

            Buffer[0] = 0;
            WideCharToMultiByte(CP_ACP, 0, ProductName, -1, (LPSTR)Buffer, sizeof(Buffer) / sizeof(char), ((void*)0), ((void*)0));
            Buffer[(sizeof(Buffer)/sizeof(WCHAR))-1] = 0;
        }

        DriverNameA[0] = 0;
        if (ProductName)
        {
            WideCharToMultiByte(CP_ACP, 0, ProductName, -1, DriverNameA, sizeof(DriverNameA) / sizeof(char), ((void*)0), ((void*)0));
            DriverNameA[(sizeof(DriverNameA) / sizeof(char))-1] = 0;
        }

        return lpDSEnumCallbackA(DeviceGuid, (LPSTR)Buffer, DriverNameA, lpContext);
    }
}
