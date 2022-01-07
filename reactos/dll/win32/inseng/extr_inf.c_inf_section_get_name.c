
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inf_section {int name; } ;


 char* strdupA (int ) ;

char *inf_section_get_name(struct inf_section *section)
{
    return strdupA(section->name);
}
