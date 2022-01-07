
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int attribs; int label; int name; } ;
typedef TYPE_1__ m_obj_settings_t ;


 int free_str_list (int *) ;
 int talloc_free (int ) ;

__attribute__((used)) static void obj_setting_free(m_obj_settings_t *item)
{
    talloc_free(item->name);
    talloc_free(item->label);
    free_str_list(&(item->attribs));
}
