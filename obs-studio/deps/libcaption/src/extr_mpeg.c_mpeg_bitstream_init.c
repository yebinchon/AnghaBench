
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int status; scalar_t__ latent; scalar_t__ front; scalar_t__ size; scalar_t__ cts; scalar_t__ dts; } ;
typedef TYPE_1__ mpeg_bitstream_t ;


 int LIBCAPTION_OK ;

void mpeg_bitstream_init(mpeg_bitstream_t* packet)
{
    packet->dts = 0;
    packet->cts = 0;
    packet->size = 0;
    packet->front = 0;
    packet->latent = 0;
    packet->status = LIBCAPTION_OK;
}
