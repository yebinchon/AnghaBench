
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int label; scalar_t__ name; } ;
typedef TYPE_1__ m_obj_settings_t ;
struct TYPE_7__ {scalar_t__ len; } ;
typedef TYPE_2__ bstr ;


 scalar_t__ bstr_equals0 (TYPE_2__,int ) ;

__attribute__((used)) static int obj_settings_list_find_by_label(m_obj_settings_t *obj_list,
                                           bstr label)
{
    for (int n = 0; obj_list && obj_list[n].name; n++) {
        if (label.len && bstr_equals0(label, obj_list[n].label))
            return n;
    }
    return -1;
}
