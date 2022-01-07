
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pagesetup_data ;
typedef int WCHAR ;
typedef int HWND ;


 int ARRAY_SIZE (int *) ;
 int COMDLG32_hInstance ;
 scalar_t__ LoadStringW (int ,int ,int *,int ) ;
 int PD32_MARGINS_IN_INCHES ;
 int PD32_MARGINS_IN_MILLIMETERS ;
 int SetDlgItemTextW (int ,int ,int *) ;
 int grp4 ;
 scalar_t__ is_metric (int const*) ;

__attribute__((used)) static void set_margin_groupbox_title(HWND hDlg, const pagesetup_data *data)
{
    WCHAR title[256];

    if(LoadStringW(COMDLG32_hInstance, is_metric(data) ? PD32_MARGINS_IN_MILLIMETERS : PD32_MARGINS_IN_INCHES,
                   title, ARRAY_SIZE(title)))
        SetDlgItemTextW(hDlg, grp4, title);
}
