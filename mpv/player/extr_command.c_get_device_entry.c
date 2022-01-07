
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct m_sub_property {char* member_0; int member_1; } ;
struct ao_device_list {struct ao_device_desc* devices; } ;
struct ao_device_desc {int desc; int name; } ;


 int SUB_PROP_STR (int ) ;
 int m_property_read_sub (struct m_sub_property*,int,void*) ;

__attribute__((used)) static int get_device_entry(int item, int action, void *arg, void *ctx)
{
    struct ao_device_list *list = ctx;
    struct ao_device_desc *entry = &list->devices[item];

    struct m_sub_property props[] = {
        {"name", SUB_PROP_STR(entry->name)},
        {"description", SUB_PROP_STR(entry->desc)},
        {0}
    };

    return m_property_read_sub(props, action, arg);
}
