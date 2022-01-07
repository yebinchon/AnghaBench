
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct taskdialog_info {int hwnd; } ;
typedef int WORD ;


 int EndDialog (int ,int ) ;
 scalar_t__ S_OK ;
 int TDN_BUTTON_CLICKED ;
 scalar_t__ taskdialog_notify (struct taskdialog_info*,int ,int ,int ) ;

__attribute__((used)) static void taskdialog_on_button_click(struct taskdialog_info *dialog_info, WORD command_id)
{
    if (taskdialog_notify(dialog_info, TDN_BUTTON_CLICKED, command_id, 0) == S_OK)
        EndDialog(dialog_info->hwnd, command_id);
}
