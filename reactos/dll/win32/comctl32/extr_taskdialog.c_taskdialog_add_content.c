
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct taskdialog_template_desc {TYPE_1__* taskconfig; } ;
struct TYPE_2__ {int pszContent; } ;


 int ID_CONTENT ;
 unsigned int taskdialog_add_static_label (struct taskdialog_template_desc*,int ,int ) ;

__attribute__((used)) static unsigned int taskdialog_add_content(struct taskdialog_template_desc *desc)
{
    return taskdialog_add_static_label(desc, ID_CONTENT, desc->taskconfig->pszContent);
}
