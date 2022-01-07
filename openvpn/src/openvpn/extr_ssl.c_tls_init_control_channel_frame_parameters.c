
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame {int link_mtu; scalar_t__ link_mtu_dynamic; int extra_link; } ;
typedef int packet_id_type ;


 int ASSERT (int) ;
 int CONTROL_SEND_ACK_MAX ;
 scalar_t__ SID_SIZE ;
 scalar_t__ TUN_LINK_DELTA (struct frame*) ;
 int frame_add_to_extra_frame (struct frame*,scalar_t__) ;
 scalar_t__ min_int (int ,int) ;
 int reliable_ack_adjust_frame_parameters (struct frame*,int ) ;
 int tls_adjust_frame_parameters (struct frame*) ;

__attribute__((used)) static void
tls_init_control_channel_frame_parameters(const struct frame *data_channel_frame,
                                          struct frame *frame)
{






    frame->link_mtu = data_channel_frame->link_mtu;
    frame->extra_link = data_channel_frame->extra_link;


    tls_adjust_frame_parameters(frame);
    reliable_ack_adjust_frame_parameters(frame, CONTROL_SEND_ACK_MAX);
    frame_add_to_extra_frame(frame, SID_SIZE + sizeof(packet_id_type));


    ASSERT(TUN_LINK_DELTA(frame) < min_int(frame->link_mtu, 1250));
    frame->link_mtu_dynamic = min_int(frame->link_mtu, 1250) - TUN_LINK_DELTA(frame);
}
