
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pagesetup_data ;
typedef int HWND ;


 int CheckRadioButton (int ,int ,int ,int ) ;
 scalar_t__ DMORIENT_LANDSCAPE ;
 scalar_t__ pagesetup_get_orientation (int const*) ;
 int rad1 ;
 int rad2 ;

__attribute__((used)) static void pagesetup_update_orientation_buttons(HWND hDlg, const pagesetup_data *data)
{
    if (pagesetup_get_orientation(data) == DMORIENT_LANDSCAPE)
        CheckRadioButton(hDlg, rad1, rad2, rad2);
    else
        CheckRadioButton(hDlg, rad1, rad2, rad1);
}
