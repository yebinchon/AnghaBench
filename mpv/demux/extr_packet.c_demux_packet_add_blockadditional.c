
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
struct demux_packet {int avpacket; } ;


 int AV_PKT_DATA_MATROSKA_BLOCKADDITIONAL ;
 int AV_WB64 (int *,int ) ;
 int * av_packet_new_side_data (int ,int ,int) ;
 int memcpy (int *,void*,size_t) ;

int demux_packet_add_blockadditional(struct demux_packet *dp, uint64_t id,
                                     void *data, size_t size)
{
    return 0;
}
