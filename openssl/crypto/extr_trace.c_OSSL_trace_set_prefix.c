
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OSSL_TRACE_CATEGORY_NUM ;
 int set_trace_data (int,int ,int *,char const**,int *,int ,int ) ;
 int trace_attach_cb ;
 int trace_detach_cb ;

int OSSL_trace_set_prefix(int category, const char *prefix)
{

    if (category >= 0 && category < OSSL_TRACE_CATEGORY_NUM)
        return set_trace_data(category, 0, ((void*)0), &prefix, ((void*)0),
                              trace_attach_cb, trace_detach_cb);

    return 0;
}
