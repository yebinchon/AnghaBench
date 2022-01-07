
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct demux_packet {int dummy; } ;


 int demux_packet_unref_contents (struct demux_packet*) ;

__attribute__((used)) static void packet_destroy(void *ptr)
{
    struct demux_packet *dp = ptr;
    demux_packet_unref_contents(dp);
}
