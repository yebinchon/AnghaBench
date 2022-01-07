
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * bio; } ;


 int OSSL_TRACE_CATEGORY_ALL ;
 int OSSL_TRACE_CATEGORY_NUM ;
 TYPE_1__* trace_channels ;

__attribute__((used)) static int ossl_trace_get_category(int category)
{
    if (category < 0 || category >= OSSL_TRACE_CATEGORY_NUM)
        return -1;
    if (trace_channels[category].bio != ((void*)0))
        return category;
    return OSSL_TRACE_CATEGORY_ALL;
}
