
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int latent; } ;
typedef TYPE_1__ mpeg_bitstream_t ;
typedef int cea708_t ;


 int * _mpeg_bitstream_cea708_back (TYPE_1__*) ;
 int cea708_init (int *,double) ;

cea708_t* _mpeg_bitstream_cea708_emplace_back(mpeg_bitstream_t* packet, double timestamp)
{
    ++packet->latent;
    cea708_t* cea708 = _mpeg_bitstream_cea708_back(packet);
    cea708_init(cea708, timestamp);
    return cea708;
}
