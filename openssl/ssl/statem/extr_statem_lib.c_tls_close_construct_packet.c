
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WPACKET ;
struct TYPE_3__ {int init_num; scalar_t__ init_off; } ;
typedef TYPE_1__ SSL ;


 size_t INT_MAX ;
 int SSL3_MT_CHANGE_CIPHER_SPEC ;
 int WPACKET_close (int *) ;
 int WPACKET_get_length (int *,size_t*) ;

int tls_close_construct_packet(SSL *s, WPACKET *pkt, int htype)
{
    size_t msglen;

    if ((htype != SSL3_MT_CHANGE_CIPHER_SPEC && !WPACKET_close(pkt))
            || !WPACKET_get_length(pkt, &msglen)
            || msglen > INT_MAX)
        return 0;
    s->init_num = (int)msglen;
    s->init_off = 0;

    return 1;
}
