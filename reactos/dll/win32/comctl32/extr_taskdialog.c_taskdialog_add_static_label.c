
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct taskdialog_template_desc {int dialog_height; TYPE_1__* taskconfig; } ;
typedef int WORD ;
typedef int WCHAR ;
struct TYPE_5__ {scalar_t__ cy; int cx; } ;
struct TYPE_4__ {int hInstance; } ;
typedef TYPE_2__ SIZE ;


 scalar_t__ DIALOG_SPACING ;
 int TRUE ;
 int WC_STATICW ;
 unsigned int taskdialog_add_control (struct taskdialog_template_desc*,int ,int ,int ,int const*,int ,scalar_t__,int ,int ,scalar_t__) ;
 int taskdialog_get_text_extent (struct taskdialog_template_desc*,int const*,int ,TYPE_2__*) ;

__attribute__((used)) static unsigned int taskdialog_add_static_label(struct taskdialog_template_desc *desc, WORD id, const WCHAR *str)
{
    unsigned int size;
    SIZE sz;

    if (!str)
        return 0;

    taskdialog_get_text_extent(desc, str, TRUE, &sz);

    desc->dialog_height += DIALOG_SPACING;
    size = taskdialog_add_control(desc, id, WC_STATICW, desc->taskconfig->hInstance, str, 0, DIALOG_SPACING,
            desc->dialog_height, sz.cx, sz.cy);
    desc->dialog_height += sz.cy + DIALOG_SPACING;
    return size;
}
