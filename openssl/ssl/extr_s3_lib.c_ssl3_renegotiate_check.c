
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int total_renegotiations; int num_renegotiations; scalar_t__ renegotiate; } ;
struct TYPE_7__ {TYPE_1__ s3; int rlayer; } ;
typedef TYPE_2__ SSL ;


 int RECORD_LAYER_read_pending (int *) ;
 int RECORD_LAYER_write_pending (int *) ;
 int SSL_in_init (TYPE_2__*) ;
 int ossl_statem_set_renegotiate (TYPE_2__*) ;

int ssl3_renegotiate_check(SSL *s, int initok)
{
    int ret = 0;

    if (s->s3.renegotiate) {
        if (!RECORD_LAYER_read_pending(&s->rlayer)
            && !RECORD_LAYER_write_pending(&s->rlayer)
            && (initok || !SSL_in_init(s))) {





            ossl_statem_set_renegotiate(s);
            s->s3.renegotiate = 0;
            s->s3.num_renegotiations++;
            s->s3.total_renegotiations++;
            ret = 1;
        }
    }
    return ret;
}
