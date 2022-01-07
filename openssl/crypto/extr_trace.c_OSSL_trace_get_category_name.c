
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num; char const* name; } ;


 size_t OSSL_NELEM (TYPE_1__*) ;
 TYPE_1__* trace_categories ;

const char *OSSL_trace_get_category_name(int num)
{
    size_t i;

    for (i = 0; i < OSSL_NELEM(trace_categories); i++)
        if (trace_categories[i].num == num)
            return trace_categories[i].name;
    return ((void*)0);
}
