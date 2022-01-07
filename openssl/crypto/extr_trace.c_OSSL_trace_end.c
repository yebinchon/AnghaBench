
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* suffix; int type; } ;
typedef int BIO ;


 int BIO_ctrl (int *,int ,int ,char*) ;
 int BIO_flush (int *) ;
 int BIO_puts (int *,char*) ;

 int CRYPTO_THREAD_unlock (int ) ;
 int OSSL_TRACE_CTRL_END ;

 int * current_channel ;
 scalar_t__ ossl_assert (int) ;
 int ossl_trace_get_category (int) ;
 int strlen (char*) ;
 TYPE_1__* trace_channels ;
 int trace_lock ;

void OSSL_trace_end(int category, BIO * channel)
{

    char *suffix = ((void*)0);

    category = ossl_trace_get_category(category);
    suffix = trace_channels[category].suffix;
    if (channel != ((void*)0)
        && ossl_assert(channel == current_channel)) {
        (void)BIO_flush(channel);
        switch (trace_channels[category].type) {
        case 128:
            if (suffix != ((void*)0)) {
                (void)BIO_puts(channel, suffix);
                (void)BIO_puts(channel, "\n");
            }
            break;
        case 129:
            (void)BIO_ctrl(channel, OSSL_TRACE_CTRL_END,
                           suffix == ((void*)0) ? 0 : strlen(suffix), suffix);
            break;
        }
        current_channel = ((void*)0);
        CRYPTO_THREAD_unlock(trace_lock);
    }

}
