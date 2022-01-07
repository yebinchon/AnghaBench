
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HWND ;
typedef int FileOpenDlgInfos ;


 int * GetPropW (int ,int ) ;
 int filedlg_info_propnameW ;

FileOpenDlgInfos *get_filedlg_infoptr(HWND hwnd)
{
    return GetPropW(hwnd, filedlg_info_propnameW);
}
