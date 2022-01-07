
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ingroup; int bio; } ;
typedef TYPE_1__ tracedata ;
typedef int tid ;
typedef int buffer ;
typedef int CRYPTO_THREAD_ID ;


 int BIO_ctrl (int ,int ,int ,char*) ;
 int BIO_snprintf (char*,int,char*,char*,int ) ;
 int BIO_write (int ,char const*,size_t) ;
 int CRYPTO_THREAD_get_current_id () ;
 char* OPENSSL_buf2hexstr (unsigned char const*,int) ;
 int OPENSSL_free (char*) ;



 int OSSL_trace_get_category_name (int) ;
 int PREFIX_CTRL_SET_PREFIX ;
 int ossl_assert (int) ;
 int strlen (char*) ;

__attribute__((used)) static size_t internal_trace_cb(const char *buf, size_t cnt,
                                int category, int cmd, void *vdata)
{
    int ret = 0;
    tracedata *trace_data = vdata;
    char buffer[256], *hex;
    CRYPTO_THREAD_ID tid;

    switch (cmd) {
    case 130:
        if (!ossl_assert(!trace_data->ingroup))
            return 0;
        trace_data->ingroup = 1;

        tid = CRYPTO_THREAD_get_current_id();
        hex = OPENSSL_buf2hexstr((const unsigned char *)&tid, sizeof(tid));
        BIO_snprintf(buffer, sizeof(buffer), "TRACE[%s]:%s: ",
                     hex, OSSL_trace_get_category_name(category));
        OPENSSL_free(hex);
        BIO_ctrl(trace_data->bio, PREFIX_CTRL_SET_PREFIX,
                 strlen(buffer), buffer);
        break;
    case 128:
        if (!ossl_assert(trace_data->ingroup))
            return 0;

        ret = BIO_write(trace_data->bio, buf, cnt);
        break;
    case 129:
        if (!ossl_assert(trace_data->ingroup))
            return 0;
        trace_data->ingroup = 0;

        BIO_ctrl(trace_data->bio, PREFIX_CTRL_SET_PREFIX, 0, ((void*)0));

        break;
    }

    return ret < 0 ? 0 : ret;
}
