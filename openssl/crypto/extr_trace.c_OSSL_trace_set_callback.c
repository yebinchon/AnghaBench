
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_data_st {int category; void* data; int * callback; } ;
typedef int * OSSL_trace_cb ;
typedef int BIO ;


 int BIO_free (int *) ;
 int * BIO_new (int *) ;
 int BIO_set_data (int *,struct trace_data_st*) ;
 int CALLBACK_CHANNEL ;
 int OPENSSL_free (struct trace_data_st*) ;
 struct trace_data_st* OPENSSL_zalloc (int) ;
 int OSSL_TRACE_CATEGORY_NUM ;
 int set_trace_data (int,int ,int **,int *,int *,int ,int ) ;
 int trace_attach_w_callback_cb ;
 int trace_detach_cb ;
 int trace_method ;

int OSSL_trace_set_callback(int category, OSSL_trace_cb callback, void *data)
{

    BIO *channel = ((void*)0);
    struct trace_data_st *trace_data = ((void*)0);

    if (category < 0 || category >= OSSL_TRACE_CATEGORY_NUM)
        return 0;

    if (callback != ((void*)0)) {
        if ((channel = BIO_new(&trace_method)) == ((void*)0)
            || (trace_data =
                OPENSSL_zalloc(sizeof(struct trace_data_st))) == ((void*)0))
            goto err;

        trace_data->callback = callback;
        trace_data->category = category;
        trace_data->data = data;

        BIO_set_data(channel, trace_data);
    }

    if (!set_trace_data(category, CALLBACK_CHANNEL, &channel, ((void*)0), ((void*)0),
                        trace_attach_w_callback_cb, trace_detach_cb))
        goto err;

    return 1;

 err:
    BIO_free(channel);
    OPENSSL_free(trace_data);


    return 0;
}
