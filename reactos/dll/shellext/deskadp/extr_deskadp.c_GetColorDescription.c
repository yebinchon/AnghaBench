
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VOID ;
typedef scalar_t__ UINT ;
struct TYPE_3__ {int dmBitsPerPel; } ;
typedef TYPE_1__* PDEVMODEW ;
typedef int * LPTSTR ;
typedef int DWORD ;


 scalar_t__ IDS_15BPP ;
 scalar_t__ IDS_16BPP ;
 scalar_t__ IDS_24BPP ;
 scalar_t__ IDS_32BPP ;
 scalar_t__ IDS_4BPP ;
 scalar_t__ IDS_8BPP ;
 int LoadString (int ,scalar_t__,int *,int ) ;
 int TEXT (char) ;
 int hInstance ;

__attribute__((used)) static VOID
GetColorDescription(PDEVMODEW lpDevMode,
                    LPTSTR lpBuffer,
                    DWORD dwBufferLen)
{
    UINT uid = 0;

    switch (lpDevMode->dmBitsPerPel)
    {
        case 4:
            uid = IDS_4BPP;
            break;
        case 8:
            uid = IDS_8BPP;
            break;
        case 15:
            uid = IDS_15BPP;
            break;
        case 16:
            uid = IDS_16BPP;
            break;
        case 24:
            uid = IDS_24BPP;
            break;
        case 32:
            uid = IDS_32BPP;
            break;
    }

    if (uid == 0 ||
        !LoadString(hInstance,
                    uid,
                    lpBuffer,
                    dwBufferLen))
    {
        lpBuffer[0] = TEXT('\0');
    }
}
