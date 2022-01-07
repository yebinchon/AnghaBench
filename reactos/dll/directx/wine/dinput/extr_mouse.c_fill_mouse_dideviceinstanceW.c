
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int ddi ;
struct TYPE_8__ {int dwSize; int dwDevType; int tszProductName; int tszInstanceName; void* guidProduct; void* guidInstance; } ;
typedef TYPE_1__* LPDIDEVICEINSTANCEW ;
typedef int DWORD ;
typedef TYPE_1__ DIDEVICEINSTANCEW ;


 int CP_ACP ;
 int DI8DEVTYPEMOUSE_TRADITIONAL ;
 int DI8DEVTYPE_MOUSE ;
 int DIDEVTYPEMOUSE_TRADITIONAL ;
 int DIDEVTYPE_MOUSE ;
 void* GUID_SysMouse ;
 int MAX_PATH ;
 int MultiByteToWideChar (int ,int ,char*,int,int ,int ) ;
 int TRACE (char*,int,TYPE_1__*) ;
 int memcpy (TYPE_1__*,TYPE_1__*,int) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static void fill_mouse_dideviceinstanceW(LPDIDEVICEINSTANCEW lpddi, DWORD version) {
    DWORD dwSize;
    DIDEVICEINSTANCEW ddi;

    dwSize = lpddi->dwSize;

    TRACE("%d %p\n", dwSize, lpddi);

    memset(lpddi, 0, dwSize);
    memset(&ddi, 0, sizeof(ddi));

    ddi.dwSize = dwSize;
    ddi.guidInstance = GUID_SysMouse;
    ddi.guidProduct = GUID_SysMouse;
    if (version >= 0x0800)
        ddi.dwDevType = DI8DEVTYPE_MOUSE | (DI8DEVTYPEMOUSE_TRADITIONAL << 8);
    else
        ddi.dwDevType = DIDEVTYPE_MOUSE | (DIDEVTYPEMOUSE_TRADITIONAL << 8);
    MultiByteToWideChar(CP_ACP, 0, "Mouse", -1, ddi.tszInstanceName, MAX_PATH);
    MultiByteToWideChar(CP_ACP, 0, "Wine Mouse", -1, ddi.tszProductName, MAX_PATH);

    memcpy(lpddi, &ddi, (dwSize < sizeof(ddi) ? dwSize : sizeof(ddi)));
}
