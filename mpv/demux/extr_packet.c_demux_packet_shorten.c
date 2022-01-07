
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct demux_packet {size_t len; scalar_t__ buffer; } ;


 int AV_INPUT_BUFFER_PADDING_SIZE ;
 int assert (int) ;
 int memset (scalar_t__,int ,int ) ;

void demux_packet_shorten(struct demux_packet *dp, size_t len)
{
    assert(len <= dp->len);
    if (dp->len) {
        dp->len = len;
        memset(dp->buffer + dp->len, 0, AV_INPUT_BUFFER_PADDING_SIZE);
    }
}
