
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int m_obj_settings_t ;


 int bstr0 (char const*) ;
 int obj_settings_list_find_by_label (int *,int ) ;

__attribute__((used)) static int obj_settings_list_find_by_label0(m_obj_settings_t *obj_list,
                                            const char *label)
{
    return obj_settings_list_find_by_label(obj_list, bstr0(label));
}
