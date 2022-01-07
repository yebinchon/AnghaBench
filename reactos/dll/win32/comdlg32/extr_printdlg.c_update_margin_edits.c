
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pagesetup_data ;
typedef scalar_t__ WORD ;
typedef int WCHAR ;
typedef int HWND ;


 int SetDlgItemTextW (int ,scalar_t__,int *) ;
 scalar_t__ edt4 ;
 scalar_t__ edt7 ;
 int * element_from_margin_id (int ,scalar_t__) ;
 int pagesetup_get_margin_rect (int const*) ;
 int size2str (int const*,int ,int *) ;

__attribute__((used)) static void update_margin_edits(HWND hDlg, const pagesetup_data *data, WORD id)
{
    WCHAR str[100];
    WORD idx;

    for(idx = edt4; idx <= edt7; idx++)
    {
        if(id == 0 || id == idx)
        {
            size2str(data, *element_from_margin_id(pagesetup_get_margin_rect(data), idx), str);
            SetDlgItemTextW(hDlg, idx, str);
        }
    }
}
