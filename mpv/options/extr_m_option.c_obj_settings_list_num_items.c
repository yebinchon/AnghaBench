
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ name; } ;
typedef TYPE_1__ m_obj_settings_t ;



__attribute__((used)) static int obj_settings_list_num_items(m_obj_settings_t *obj_list)
{
    int num = 0;
    while (obj_list && obj_list[num].name)
        num++;
    return num;
}
