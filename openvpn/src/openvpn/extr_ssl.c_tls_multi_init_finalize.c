
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int single_session; int frame; } ;
struct tls_multi {int * session; TYPE_1__ opt; } ;
struct frame {int dummy; } ;


 size_t TM_ACTIVE ;
 size_t TM_UNTRUSTED ;
 int tls_init_control_channel_frame_parameters (struct frame const*,int *) ;
 int tls_session_init (struct tls_multi*,int *) ;

void
tls_multi_init_finalize(struct tls_multi *multi, const struct frame *frame)
{
    tls_init_control_channel_frame_parameters(frame, &multi->opt.frame);



    tls_session_init(multi, &multi->session[TM_ACTIVE]);

    if (!multi->opt.single_session)
    {
        tls_session_init(multi, &multi->session[TM_UNTRUSTED]);
    }
}
