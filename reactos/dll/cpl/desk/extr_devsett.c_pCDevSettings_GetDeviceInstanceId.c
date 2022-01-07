
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int ULONG ;
typedef int const* PWSTR ;
typedef int const* LPWSTR ;
typedef int HLOCAL ;
typedef int DEVINSTID_W ;
typedef int DEVINST ;
typedef scalar_t__ CONFIGRET ;


 scalar_t__ CM_Get_Device_IDW (int ,int const*,int,int ) ;
 scalar_t__ CM_Get_Device_ID_Size (int*,int ,int ) ;
 int CM_LOCATE_DEVNODE_NORMAL ;
 scalar_t__ CM_Locate_DevNodeW (int *,int ,int ) ;
 scalar_t__ CR_SUCCESS ;
 int DPRINT1 (char*,...) ;
 int LMEM_FIXED ;
 int * LocalAlloc (int ,int) ;
 int LocalFree (int ) ;

__attribute__((used)) static PWSTR
pCDevSettings_GetDeviceInstanceId(const WCHAR *pszDevice)
{
    DEVINST DevInst;
    CONFIGRET cr;
    ULONG BufLen;
    LPWSTR lpDevInstId = ((void*)0);

    DPRINT1("CDevSettings::GetDeviceInstanceId(%ws) UNIMPLEMENTED!\n", pszDevice);

    cr = CM_Locate_DevNodeW(&DevInst,
                            (DEVINSTID_W)pszDevice,
                            CM_LOCATE_DEVNODE_NORMAL);
    if (cr == CR_SUCCESS)
    {
        DPRINT1("Success1\n");
        cr = CM_Get_Device_ID_Size(&BufLen,
                                   DevInst,
                                   0);
        if (cr == CR_SUCCESS)
        {
            DPRINT1("Success2\n");
            lpDevInstId = LocalAlloc(LMEM_FIXED,
                                     (BufLen + 1) * sizeof(WCHAR));

            if (lpDevInstId != ((void*)0))
            {
                DPRINT1("Success3\n");
                cr = CM_Get_Device_IDW(DevInst,
                                       lpDevInstId,
                                       BufLen,
                                       0);

                if (cr != CR_SUCCESS)
                {
                    LocalFree((HLOCAL)lpDevInstId);
                    lpDevInstId = ((void*)0);
                }
                DPRINT1("instance id: %ws\n", lpDevInstId);
            }
        }
    }

    return lpDevInstId;
}
