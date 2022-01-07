
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inf_section {int name; } ;
struct inf_file {int dummy; } ;


 scalar_t__ inf_next_section (struct inf_file*,struct inf_section**) ;
 int strcasecmp (int ,char const*) ;

struct inf_section *inf_get_section(struct inf_file *inf, const char *name)
{
    struct inf_section *sec = ((void*)0);

    while (inf_next_section(inf, &sec))
    {
        if (!strcasecmp(sec->name, name))
            return sec;
    }

    return ((void*)0);
}
