
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * bio; } ;


 int ossl_trace_get_category (int) ;
 TYPE_1__* trace_channels ;

int OSSL_trace_enabled(int category)
{
    int ret = 0;

    category = ossl_trace_get_category(category);
    if (category >= 0)
        ret = trace_channels[category].bio != ((void*)0);

    return ret;
}
