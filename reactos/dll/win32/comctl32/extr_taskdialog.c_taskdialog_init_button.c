
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct taskdialog_template_desc {struct taskdialog_button_desc* default_button; TYPE_1__* taskconfig; } ;
struct taskdialog_button_desc {int id; int hinst; scalar_t__ line; int width; int const* text; } ;
typedef int WCHAR ;
struct TYPE_5__ {scalar_t__ cx; } ;
struct TYPE_4__ {int nDefaultButton; int hInstance; } ;
typedef TYPE_2__ SIZE ;
typedef scalar_t__ BOOL ;


 int COMCTL32_hModule ;
 int DIALOG_BUTTON_WIDTH ;
 int DIALOG_SPACING ;
 int max (int ,scalar_t__) ;
 int taskdialog_get_text_extent (struct taskdialog_template_desc*,int const*,scalar_t__,TYPE_2__*) ;

__attribute__((used)) static void taskdialog_init_button(struct taskdialog_button_desc *button, struct taskdialog_template_desc *desc,
        int id, const WCHAR *text, BOOL custom_button)
{
    SIZE sz;

    taskdialog_get_text_extent(desc, text, custom_button, &sz);

    button->id = id;
    button->text = text;
    button->width = max(DIALOG_BUTTON_WIDTH, sz.cx + DIALOG_SPACING * 2);
    button->line = 0;
    button->hinst = custom_button ? desc->taskconfig->hInstance : COMCTL32_hModule;

    if (id == desc->taskconfig->nDefaultButton)
        desc->default_button = button;
}
