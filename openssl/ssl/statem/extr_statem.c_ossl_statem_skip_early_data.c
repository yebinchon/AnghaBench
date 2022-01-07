
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ hand_state; } ;
struct TYPE_5__ {scalar_t__ early_data; } ;
struct TYPE_7__ {scalar_t__ hello_retry_request; TYPE_2__ statem; int server; TYPE_1__ ext; } ;
typedef TYPE_3__ SSL ;


 scalar_t__ SSL_EARLY_DATA_REJECTED ;
 scalar_t__ SSL_HRR_COMPLETE ;
 scalar_t__ TLS_ST_EARLY_DATA ;

int ossl_statem_skip_early_data(SSL *s)
{
    if (s->ext.early_data != SSL_EARLY_DATA_REJECTED)
        return 0;

    if (!s->server
            || s->statem.hand_state != TLS_ST_EARLY_DATA
            || s->hello_retry_request == SSL_HRR_COMPLETE)
        return 0;

    return 1;
}
