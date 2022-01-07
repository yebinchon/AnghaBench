
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct PayloadsUDP {unsigned int count; TYPE_1__** list; } ;
struct TYPE_2__ {unsigned int port; unsigned char* buf; unsigned int length; unsigned int source_port; int set_cookie; int xsum; } ;
typedef int SET_COOKIE ;



int
payloads_udp_lookup(
        const struct PayloadsUDP *payloads,
        unsigned port,
        const unsigned char **px,
        unsigned *length,
        unsigned *source_port,
        uint64_t *xsum,
        SET_COOKIE *set_cookie)
{
    unsigned i;
    if (payloads == 0)
        return 0;

    port &= 0xFFFF;

    for (i=0; i<payloads->count; i++) {
        if (payloads->list[i]->port == port) {
            *px = payloads->list[i]->buf;
            *length = payloads->list[i]->length;
            *source_port = payloads->list[i]->source_port;
            *xsum = payloads->list[i]->xsum;
            *set_cookie = payloads->list[i]->set_cookie;
            return 1;
        }
    }
    return 0;
}
