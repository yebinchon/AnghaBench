
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ section; int * name; } ;
typedef TYPE_1__ CONF_VALUE ;


 int strcmp (int *,int *) ;

__attribute__((used)) static int conf_value_cmp(const CONF_VALUE *a, const CONF_VALUE *b)
{
    int i;

    if (a->section != b->section) {
        i = strcmp(a->section, b->section);
        if (i)
            return i;
    }

    if ((a->name != ((void*)0)) && (b->name != ((void*)0))) {
        i = strcmp(a->name, b->name);
        return i;
    } else if (a->name == b->name)
        return 0;
    else
        return ((a->name == ((void*)0)) ? -1 : 1);
}
