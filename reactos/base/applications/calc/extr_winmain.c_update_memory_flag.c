
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ is_memory; } ;
typedef int HWND ;
typedef scalar_t__ BOOL ;


 int IDC_TEXT_MEMORY ;
 int SetDlgItemText (int ,int ,int ) ;
 int _T (char*) ;
 TYPE_1__ calc ;

__attribute__((used)) static void update_memory_flag(HWND hWnd, BOOL mem_flag)
{
    calc.is_memory = mem_flag;
    SetDlgItemText(hWnd, IDC_TEXT_MEMORY, mem_flag ? _T("M") : _T(""));
}
