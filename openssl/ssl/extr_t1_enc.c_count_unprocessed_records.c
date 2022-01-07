
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int rlayer; } ;
struct TYPE_5__ {int left; scalar_t__ offset; scalar_t__ buf; } ;
typedef TYPE_1__ SSL3_BUFFER ;
typedef TYPE_2__ SSL ;
typedef int PACKET ;


 int PACKET_buf_init (int *,scalar_t__,int ) ;
 int PACKET_forward (int *,int) ;
 scalar_t__ PACKET_get_length_prefixed_2 (int *,int *) ;
 scalar_t__ PACKET_remaining (int *) ;
 TYPE_1__* RECORD_LAYER_get_rbuf (int *) ;

__attribute__((used)) static int count_unprocessed_records(SSL *s)
{
    SSL3_BUFFER *rbuf = RECORD_LAYER_get_rbuf(&s->rlayer);
    PACKET pkt, subpkt;
    int count = 0;

    if (!PACKET_buf_init(&pkt, rbuf->buf + rbuf->offset, rbuf->left))
        return -1;

    while (PACKET_remaining(&pkt) > 0) {

        if (!PACKET_forward(&pkt, 3))
            return -1;


        if (PACKET_get_length_prefixed_2(&pkt, &subpkt))
            return -1;

        count += 1;
    }

    return count;
}
