
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HDC ;
typedef int DWORD ;
typedef int BOOL ;


 int BITSPIXEL ;
 int FALSE ;
 int GetDC (int *) ;
 int GetDeviceCaps (int ,int ) ;
 int PLANES ;
 int ReleaseDC (int *,int ) ;
 int TRUE ;

__attribute__((used)) static BOOL IsDirectDrawSupported()
{
    HDC hDC;
    DWORD Planes;
    DWORD Bpp;

    hDC = GetDC(((void*)0));
    Planes = GetDeviceCaps(hDC, PLANES);
    Bpp = GetDeviceCaps(hDC, BITSPIXEL);
    ReleaseDC(((void*)0), hDC);

    if (Planes * Bpp < 8)
        return FALSE;

    return TRUE;
}
