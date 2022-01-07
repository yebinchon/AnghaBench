
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ ptr; } ;
struct TYPE_4__ {int * info_callback; } ;
typedef int BIO_info_cb ;
typedef TYPE_1__ BIO_CONNECT ;
typedef TYPE_2__ BIO ;




__attribute__((used)) static long conn_callback_ctrl(BIO *b, int cmd, BIO_info_cb *fp)
{
    long ret = 1;
    BIO_CONNECT *data;

    data = (BIO_CONNECT *)b->ptr;

    switch (cmd) {
    case 128:
        {
            data->info_callback = fp;
        }
        break;
    default:
        ret = 0;
        break;
    }
    return ret;
}
