
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * bio; } ;
typedef TYPE_1__ tracedata ;
typedef int BIO ;


 int BIO_FP_TEXT ;
 int BIO_NOCLOSE ;
 int BIO_free_all (int *) ;
 int BIO_new (int ) ;
 int BIO_new_fp (int ,int) ;
 int * BIO_push (int ,int ) ;
 TYPE_1__* OPENSSL_zalloc (int) ;
 scalar_t__ OSSL_trace_enabled (int) ;
 char* OSSL_trace_get_category_name (int) ;
 scalar_t__ OSSL_trace_set_callback (int,int *,TYPE_1__*) ;
 int apps_bf_prefix () ;
 int fprintf (int ,char*,char*) ;
 int * internal_trace_cb ;
 scalar_t__ sk_tracedata_push (int ,TYPE_1__*) ;
 int stderr ;
 int trace_data_stack ;

__attribute__((used)) static void setup_trace_category(int category)
{
    BIO *channel;
    tracedata *trace_data;

    if (OSSL_trace_enabled(category))
        return;

    channel = BIO_push(BIO_new(apps_bf_prefix()),
                       BIO_new_fp(stderr, BIO_NOCLOSE | BIO_FP_TEXT));
    trace_data = OPENSSL_zalloc(sizeof(*trace_data));

    if (trace_data == ((void*)0)
        || (trace_data->bio = channel) == ((void*)0)
        || OSSL_trace_set_callback(category, internal_trace_cb,
                                   trace_data) == 0
        || sk_tracedata_push(trace_data_stack, trace_data) == 0) {

        fprintf(stderr,
                "warning: unable to setup trace callback for category '%s'.\n",
                OSSL_trace_get_category_name(category));

        OSSL_trace_set_callback(category, ((void*)0), ((void*)0));
        BIO_free_all(channel);
    }
}
