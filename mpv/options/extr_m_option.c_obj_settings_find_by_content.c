
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ name; } ;
typedef TYPE_1__ m_obj_settings_t ;


 scalar_t__ obj_setting_equals (TYPE_1__*,TYPE_1__*) ;

__attribute__((used)) static int obj_settings_find_by_content(m_obj_settings_t *obj_list,
                                        m_obj_settings_t *item)
{
    for (int n = 0; obj_list && obj_list[n].name; n++) {
        if (obj_setting_equals(&obj_list[n], item))
            return n;
    }
    return -1;
}
