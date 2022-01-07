
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int rrec; TYPE_1__* s; } ;
struct TYPE_5__ {int rlayer; } ;
typedef TYPE_1__ SSL ;
typedef TYPE_2__ RECORD_LAYER ;


 int RECORD_LAYER_set_first_record (int *) ;
 int SSL3_RECORD_clear (int ,int ) ;
 int SSL_MAX_PIPELINES ;

void RECORD_LAYER_init(RECORD_LAYER *rl, SSL *s)
{
    rl->s = s;
    RECORD_LAYER_set_first_record(&s->rlayer);
    SSL3_RECORD_clear(rl->rrec, SSL_MAX_PIPELINES);
}
