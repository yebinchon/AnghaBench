
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* demux_copy_packet (void*) ;

__attribute__((used)) static void *packet_ref(void *data)
{
    return demux_copy_packet(data);
}
