
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int HWND ;
typedef int DWORD ;


 int GWL_STYLE ;
 int GetWindowLongPtr (int ,int ) ;
 int LVS_TYPEMASK ;
 int SetWindowLongPtr (int ,int ,int) ;

VOID
SetListViewStyle(HWND hListView,
                 DWORD View)
{
    DWORD Style = GetWindowLongPtr(hListView, GWL_STYLE);

    if ((Style & LVS_TYPEMASK) != View)
    {
        SetWindowLongPtr(hListView,
                         GWL_STYLE,
                         (Style & ~LVS_TYPEMASK) | View);
    }
}
