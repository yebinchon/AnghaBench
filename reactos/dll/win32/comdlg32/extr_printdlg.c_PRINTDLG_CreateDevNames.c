
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int wDriverOffset; int wDeviceOffset; int wOutputOffset; int wDefault; } ;
typedef TYPE_1__* LPDEVNAMES ;
typedef int HGLOBAL ;
typedef int DWORD ;
typedef int DEVNAMES ;
typedef int BOOL ;


 int ARRAY_SIZE (char*) ;
 int FALSE ;
 int GMEM_MOVEABLE ;
 int GetDefaultPrinterA (char*,int *) ;
 int GlobalAlloc (int ,long) ;
 char* GlobalLock (int ) ;
 int GlobalReAlloc (int ,long,int ) ;
 int GlobalUnlock (int ) ;
 int TRUE ;
 scalar_t__ strcmp (char*,char const*) ;
 int strcpy (char*,char const*) ;
 int strlen (char const*) ;
 char* strrchr (char const*,char) ;

__attribute__((used)) static BOOL PRINTDLG_CreateDevNames(HGLOBAL *hmem, const char* DeviceDriverName,
        const char* DeviceName, const char* OutputPort)
{
    long size;
    char* pDevNamesSpace;
    char* pTempPtr;
    LPDEVNAMES lpDevNames;
    char buf[260];
    DWORD dwBufLen = ARRAY_SIZE(buf);
    const char *p;

    p = strrchr( DeviceDriverName, '\\' );
    if (p) DeviceDriverName = p + 1;

    size = strlen(DeviceDriverName) + 1
            + strlen(DeviceName) + 1
            + strlen(OutputPort) + 1
            + sizeof(DEVNAMES);

    if(*hmem)
        *hmem = GlobalReAlloc(*hmem, size, GMEM_MOVEABLE);
    else
        *hmem = GlobalAlloc(GMEM_MOVEABLE, size);
    if (*hmem == 0)
        return FALSE;

    pDevNamesSpace = GlobalLock(*hmem);
    lpDevNames = (LPDEVNAMES) pDevNamesSpace;

    pTempPtr = pDevNamesSpace + sizeof(DEVNAMES);
    strcpy(pTempPtr, DeviceDriverName);
    lpDevNames->wDriverOffset = pTempPtr - pDevNamesSpace;

    pTempPtr += strlen(DeviceDriverName) + 1;
    strcpy(pTempPtr, DeviceName);
    lpDevNames->wDeviceOffset = pTempPtr - pDevNamesSpace;

    pTempPtr += strlen(DeviceName) + 1;
    strcpy(pTempPtr, OutputPort);
    lpDevNames->wOutputOffset = pTempPtr - pDevNamesSpace;

    GetDefaultPrinterA(buf, &dwBufLen);
    lpDevNames->wDefault = (strcmp(buf, DeviceName) == 0) ? 1 : 0;
    GlobalUnlock(*hmem);
    return TRUE;
}
