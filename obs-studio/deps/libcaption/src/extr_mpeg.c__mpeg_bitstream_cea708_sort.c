
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {size_t latent; } ;
typedef TYPE_1__ mpeg_bitstream_t ;
struct TYPE_9__ {scalar_t__ timestamp; } ;
typedef TYPE_2__ cea708_t ;


 TYPE_2__* _mpeg_bitstream_cea708_at (TYPE_1__*,size_t) ;
 int memcpy (TYPE_2__*,TYPE_2__*,int) ;

void _mpeg_bitstream_cea708_sort(mpeg_bitstream_t* packet)
{


again:
    for (size_t i = 1; i < packet->latent; ++i) {
        cea708_t c;
        cea708_t* a = _mpeg_bitstream_cea708_at(packet, i - 1);
        cea708_t* b = _mpeg_bitstream_cea708_at(packet, i);
        if (a->timestamp > b->timestamp) {
            memcpy(&c, a, sizeof(cea708_t));
            memcpy(a, b, sizeof(cea708_t));
            memcpy(b, &c, sizeof(cea708_t));
            goto again;
        }
    }
}
