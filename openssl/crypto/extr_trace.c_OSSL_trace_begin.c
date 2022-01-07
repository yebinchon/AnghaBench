
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* prefix; int type; int * bio; } ;
typedef int BIO ;


 int BIO_ctrl (int *,int ,int ,char*) ;
 int BIO_puts (int *,char*) ;

 int CRYPTO_THREAD_write_lock (int ) ;
 int OSSL_TRACE_CTRL_BEGIN ;

 int * current_channel ;
 int ossl_trace_get_category (int) ;
 int strlen (char*) ;
 TYPE_1__* trace_channels ;
 int trace_lock ;

BIO *OSSL_trace_begin(int category)
{
    BIO *channel = ((void*)0);

    char *prefix = ((void*)0);

    category = ossl_trace_get_category(category);
    if (category < 0)
        return ((void*)0);

    channel = trace_channels[category].bio;
    prefix = trace_channels[category].prefix;

    if (channel != ((void*)0)) {
        CRYPTO_THREAD_write_lock(trace_lock);
        current_channel = channel;
        switch (trace_channels[category].type) {
        case 128:
            if (prefix != ((void*)0)) {
                (void)BIO_puts(channel, prefix);
                (void)BIO_puts(channel, "\n");
            }
            break;
        case 129:
            (void)BIO_ctrl(channel, OSSL_TRACE_CTRL_BEGIN,
                           prefix == ((void*)0) ? 0 : strlen(prefix), prefix);
            break;
        }
    }

    return channel;
}
