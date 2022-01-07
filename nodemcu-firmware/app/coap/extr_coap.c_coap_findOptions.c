
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_5__ {size_t numopts; TYPE_2__* opts; } ;
typedef TYPE_1__ coap_packet_t ;
struct TYPE_6__ {scalar_t__ num; } ;
typedef TYPE_2__ coap_option_t ;



const coap_option_t *coap_findOptions(const coap_packet_t *pkt, uint8_t num, uint8_t *count)
{

    size_t i;
    const coap_option_t *first = ((void*)0);
    *count = 0;
    for (i=0;i<pkt->numopts;i++)
    {
        if (pkt->opts[i].num == num)
        {
            if (((void*)0) == first)
                first = &pkt->opts[i];
            (*count)++;
        }
        else
        {
            if (((void*)0) != first)
                break;
        }
    }
    return first;
}
