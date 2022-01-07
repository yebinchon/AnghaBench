
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ latent; } ;
typedef TYPE_1__ mpeg_bitstream_t ;
typedef int cea708_t ;


 int * _mpeg_bitstream_cea708_at (TYPE_1__*,scalar_t__) ;

cea708_t* _mpeg_bitstream_cea708_back(mpeg_bitstream_t* packet) { return _mpeg_bitstream_cea708_at(packet, packet->latent - 1); }
