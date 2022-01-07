
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_auth_standalone {int frame; } ;
struct frame {int dummy; } ;


 int tls_init_control_channel_frame_parameters (struct frame const*,int *) ;

void
tls_auth_standalone_finalize(struct tls_auth_standalone *tas,
                             const struct frame *frame)
{
    tls_init_control_channel_frame_parameters(frame, &tas->frame);
}
