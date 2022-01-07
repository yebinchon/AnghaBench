
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame {int dummy; } ;
typedef int packet_size_type ;


 int frame_add_to_extra_frame (struct frame*,int) ;
 scalar_t__ link_socket_proto_connection_oriented (int) ;

void
socket_adjust_frame_parameters(struct frame *frame, int proto)
{
    if (link_socket_proto_connection_oriented(proto))
    {
        frame_add_to_extra_frame(frame, sizeof(packet_size_type));
    }
}
