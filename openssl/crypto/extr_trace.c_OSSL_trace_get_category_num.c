
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num; int name; } ;


 size_t OSSL_NELEM (TYPE_1__*) ;
 scalar_t__ strcasecmp (char const*,int ) ;
 TYPE_1__* trace_categories ;

int OSSL_trace_get_category_num(const char *name)
{
    size_t i;

    for (i = 0; i < OSSL_NELEM(trace_categories); i++)
        if (strcasecmp(name, trace_categories[i].name) == 0)
            return trace_categories[i].num;
    return -1;
}
