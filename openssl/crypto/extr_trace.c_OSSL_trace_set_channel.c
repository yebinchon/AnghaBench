
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO ;


 int OSSL_TRACE_CATEGORY_NUM ;
 int SIMPLE_CHANNEL ;
 int set_trace_data (int,int ,int **,int *,int *,int ,int ) ;
 int trace_attach_cb ;
 int trace_detach_cb ;

int OSSL_trace_set_channel(int category, BIO *channel)
{

    if (category >= 0 && category < OSSL_TRACE_CATEGORY_NUM)
        return set_trace_data(category, SIMPLE_CHANNEL, &channel, ((void*)0), ((void*)0),
                              trace_attach_cb, trace_detach_cb);

    return 0;
}
