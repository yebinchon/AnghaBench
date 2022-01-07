
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_tags {int * values; int * keys; } ;
struct m_sub_property {char* member_0; int member_1; } ;


 int SUB_PROP_STR (int ) ;
 int m_property_read_sub (struct m_sub_property*,int,void*) ;

__attribute__((used)) static int get_tag_entry(int item, int action, void *arg, void *ctx)
{
    struct mp_tags *tags = ctx;

    struct m_sub_property props[] = {
        {"key", SUB_PROP_STR(tags->keys[item])},
        {"value", SUB_PROP_STR(tags->values[item])},
        {0}
    };

    return m_property_read_sub(props, action, arg);
}
