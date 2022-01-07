
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct demux_packet {int avpacket; } ;


 int AV_PKT_DATA_SKIP_SAMPLES ;
 int AV_WL32 (int *,int) ;
 int * av_packet_new_side_data (int ,int ,int) ;

int demux_packet_set_padding(struct demux_packet *dp, int start, int end)
{
    return 0;
}
