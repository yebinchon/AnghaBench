
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t front; int * cea708; } ;
typedef TYPE_1__ mpeg_bitstream_t ;
typedef int cea708_t ;


 size_t MAX_REFRENCE_FRAMES ;

cea708_t* _mpeg_bitstream_cea708_at(mpeg_bitstream_t* packet, size_t pos) { return &packet->cea708[(packet->front + pos) % MAX_REFRENCE_FRAMES]; }
