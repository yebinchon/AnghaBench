
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ state; scalar_t__ hand_state; } ;
struct TYPE_5__ {scalar_t__ total_renegotiations; int in_read_app_data; } ;
struct TYPE_6__ {scalar_t__ server; TYPE_1__ s3; TYPE_3__ statem; } ;
typedef TYPE_2__ SSL ;
typedef TYPE_3__ OSSL_STATEM ;


 scalar_t__ MSG_FLOW_UNINITED ;
 scalar_t__ TLS_ST_BEFORE ;
 scalar_t__ TLS_ST_CW_CLNT_HELLO ;
 scalar_t__ TLS_ST_SR_CLNT_HELLO ;

int ossl_statem_app_data_allowed(SSL *s)
{
    OSSL_STATEM *st = &s->statem;

    if (st->state == MSG_FLOW_UNINITED)
        return 0;

    if (!s->s3.in_read_app_data || (s->s3.total_renegotiations == 0))
        return 0;

    if (s->server) {




        if (st->hand_state == TLS_ST_BEFORE
            || st->hand_state == TLS_ST_SR_CLNT_HELLO)
            return 1;
    } else {




        if (st->hand_state == TLS_ST_CW_CLNT_HELLO)
            return 1;
    }

    return 0;
}
