
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct m_obj_desc {struct mp_user_filter_entry const* p; } ;
struct mp_user_filter_entry {struct m_obj_desc desc; } ;



__attribute__((used)) static bool get_desc_from(const struct mp_user_filter_entry **list, int num,
                          struct m_obj_desc *dst, int index)
{
    if (index >= num)
        return 0;
    const struct mp_user_filter_entry *entry = list[index];
    *dst = entry->desc;
    dst->p = entry;
    return 1;
}
