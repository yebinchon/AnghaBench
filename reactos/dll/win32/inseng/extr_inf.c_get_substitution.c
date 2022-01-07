
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inf_value {char const* value; int key; } ;
struct inf_section {int dummy; } ;
struct inf_file {int dummy; } ;


 struct inf_section* inf_get_section (struct inf_file*,char*) ;
 scalar_t__ inf_section_next_value (struct inf_section*,struct inf_value**) ;
 int strlen (int ) ;
 int strncasecmp (int ,char const*,int) ;

__attribute__((used)) static const char *get_substitution(struct inf_file *inf, const char *name, int len)
{
    struct inf_section *sec;
    struct inf_value *value = ((void*)0);

    sec = inf_get_section(inf, "Strings");
    if (!sec) return ((void*)0);

    while (inf_section_next_value(sec, &value))
    {
        if (strlen(value->key) == len && !strncasecmp(value->key, name, len))
            return value->value;
    }

    return ((void*)0);
}
