
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HWND ;
typedef int HDC ;


 int ERR (char*,int ,int ) ;
 int GetLastError () ;
 int ReleaseDC (scalar_t__,int ) ;
 int WARN (char*,int ,scalar_t__) ;
 scalar_t__ WindowFromDC (int ) ;

void wined3d_release_dc(HWND window, HDC dc)
{






    if (WindowFromDC(dc) != window)
        WARN("DC %p does not belong to window %p.\n", dc, window);
    else if (!ReleaseDC(window, dc))
        ERR("Failed to release device context %p, last error %#x.\n", dc, GetLastError());
}
