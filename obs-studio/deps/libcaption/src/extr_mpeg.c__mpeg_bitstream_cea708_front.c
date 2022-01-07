
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mpeg_bitstream_t ;
typedef int cea708_t ;


 int * _mpeg_bitstream_cea708_at (int *,int ) ;

cea708_t* _mpeg_bitstream_cea708_front(mpeg_bitstream_t* packet) { return _mpeg_bitstream_cea708_at(packet, 0); }
