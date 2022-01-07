
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO ;


 int CRYPTO_THREAD_lock_free (int ) ;
 int OSSL_TRACE_CATEGORY_NUM ;
 int OSSL_TRACE_CATEGORY_TRACE ;
 int set_trace_data (int,int ,int **,char const**,char const**,int ,int ) ;
 int trace_attach_cb ;
 int trace_detach_cb ;
 int trace_lock ;

void ossl_trace_cleanup(void)
{

    int category;
    BIO *channel = ((void*)0);
    const char *prefix = ((void*)0);
    const char *suffix = ((void*)0);

    for (category = 0; category < OSSL_TRACE_CATEGORY_NUM; category++) {

        if (category == OSSL_TRACE_CATEGORY_TRACE)
            continue;
        set_trace_data(category, 0, &channel, &prefix, &suffix,
                       trace_attach_cb, trace_detach_cb);
    }
    set_trace_data(OSSL_TRACE_CATEGORY_TRACE, 0, &channel,
                   &prefix, &suffix,
                   trace_attach_cb, trace_detach_cb);
    CRYPTO_THREAD_lock_free(trace_lock);

}
