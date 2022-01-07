
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct taskdialog_info {int callback_data; int hwnd; int (* callback ) (int ,int ,int ,int ,int ) ;} ;
typedef int WPARAM ;
typedef int UINT ;
typedef int LPARAM ;
typedef int HRESULT ;


 int S_OK ;
 int stub1 (int ,int ,int ,int ,int ) ;

__attribute__((used)) static HRESULT taskdialog_notify(struct taskdialog_info *dialog_info, UINT notification, WPARAM wparam, LPARAM lparam)
{
    return dialog_info->callback ? dialog_info->callback(dialog_info->hwnd, notification, wparam, lparam,
            dialog_info->callback_data) : S_OK;
}
