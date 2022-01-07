
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame {int dummy; } ;


 int SET_MTU_UPPER_BOUND ;
 scalar_t__ datagram_overhead (int) ;
 int frame_set_mtu_dynamic (struct frame*,scalar_t__,int ) ;

void
frame_adjust_path_mtu(struct frame *frame, int pmtu, int proto)
{
    frame_set_mtu_dynamic(frame, pmtu - datagram_overhead(proto), SET_MTU_UPPER_BOUND);
}
