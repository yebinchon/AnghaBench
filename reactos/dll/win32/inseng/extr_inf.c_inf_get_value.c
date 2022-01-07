
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inf_value {int key; } ;
struct inf_section {int dummy; } ;


 scalar_t__ inf_section_next_value (struct inf_section*,struct inf_value**) ;
 int strcasecmp (int ,char const*) ;

struct inf_value *inf_get_value(struct inf_section *sec, const char *key)
{
    struct inf_value *value = ((void*)0);

    while (inf_section_next_value(sec, &value))
    {
        if (!strcasecmp(value->key, key))
            return value;
    }

    return ((void*)0);
}
