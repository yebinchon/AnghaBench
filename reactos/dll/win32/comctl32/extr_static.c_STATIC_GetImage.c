
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WPARAM ;
typedef int HWND ;
typedef int * HANDLE ;
typedef int DWORD ;


 int GetWindowLongPtrW (int ,int ) ;
 int HICON_GWL_OFFSET ;
 int IMAGE_BITMAP ;
 int IMAGE_CURSOR ;
 int IMAGE_ENHMETAFILE ;
 int IMAGE_ICON ;



 int SS_TYPEMASK ;

__attribute__((used)) static HANDLE STATIC_GetImage( HWND hwnd, WPARAM wParam, DWORD style )
{
    switch (style & SS_TYPEMASK)
    {
        case 128:
            if ((wParam != IMAGE_ICON) &&
                (wParam != IMAGE_CURSOR)) return ((void*)0);
            break;
        case 130:
            if (wParam != IMAGE_BITMAP) return ((void*)0);
            break;
        case 129:
            if (wParam != IMAGE_ENHMETAFILE) return ((void*)0);
            break;
        default:
            return ((void*)0);
    }
    return (HANDLE)GetWindowLongPtrW( hwnd, HICON_GWL_OFFSET );
}
