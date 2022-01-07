
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame {int dummy; } ;


 int PROTO_UDP ;
 int frame_add_to_extra_link (struct frame*,int) ;

void
socks_adjust_frame_parameters(struct frame *frame, int proto)
{
    if (proto == PROTO_UDP)
    {
        frame_add_to_extra_link(frame, 10);
    }
}
