
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ numwpipes; int rrec; int s; int rbuf; } ;
typedef TYPE_1__ RECORD_LAYER ;


 scalar_t__ SSL3_BUFFER_is_initialised (int *) ;
 int SSL3_RECORD_release (int ,int ) ;
 int SSL_MAX_PIPELINES ;
 int ssl3_release_read_buffer (int ) ;
 int ssl3_release_write_buffer (int ) ;

void RECORD_LAYER_release(RECORD_LAYER *rl)
{
    if (SSL3_BUFFER_is_initialised(&rl->rbuf))
        ssl3_release_read_buffer(rl->s);
    if (rl->numwpipes > 0)
        ssl3_release_write_buffer(rl->s);
    SSL3_RECORD_release(rl->rrec, SSL_MAX_PIPELINES);
}
