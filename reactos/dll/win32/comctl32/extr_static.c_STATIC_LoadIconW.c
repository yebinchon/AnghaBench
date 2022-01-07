
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG_PTR ;
typedef int LPCWSTR ;
typedef scalar_t__ HINSTANCE ;
typedef scalar_t__ HICON ;
typedef int DWORD ;


 int IMAGE_ICON ;
 int LR_SHARED ;
 scalar_t__ LoadCursorW (scalar_t__,int ) ;
 scalar_t__ LoadIconW (scalar_t__,int ) ;
 scalar_t__ LoadImageW (scalar_t__,int ,int ,int ,int ,int ) ;
 int SS_REALSIZEIMAGE ;

__attribute__((used)) static HICON STATIC_LoadIconW( HINSTANCE hInstance, LPCWSTR name, DWORD style )
{
    HICON hicon = 0;

    if (hInstance && ((ULONG_PTR)hInstance >> 16))
    {
        if ((style & SS_REALSIZEIMAGE) != 0)
            hicon = LoadImageW(hInstance, name, IMAGE_ICON, 0, 0, LR_SHARED);
        else
        {
            hicon = LoadIconW( hInstance, name );
            if (!hicon) hicon = LoadCursorW( hInstance, name );
        }
    }
    if (!hicon) hicon = LoadIconW( 0, name );



    return hicon;
}
