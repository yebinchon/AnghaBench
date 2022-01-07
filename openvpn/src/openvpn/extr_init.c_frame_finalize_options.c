
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int tun_mtu; int tun_mtu_defined; int link_mtu; int link_mtu_defined; } ;
struct options {TYPE_2__ ce; } ;
struct TYPE_3__ {int frame; } ;
struct context {TYPE_1__ c2; struct options options; } ;


 int CIPHER_ENABLED (struct context*) ;
 int FRAME_HEADROOM_MARKER_FRAGMENT ;
 int FRAME_HEADROOM_MARKER_READ_LINK ;
 int FRAME_HEADROOM_MARKER_READ_STREAM ;
 int PAYLOAD_ALIGN ;
 int frame_add_to_extra_buffer (int *,int ) ;
 int frame_align_to_extra_frame (int *) ;
 int frame_finalize (int *,int ,int ,int ,int ) ;
 int frame_or_align_flags (int *,int) ;

__attribute__((used)) static void
frame_finalize_options(struct context *c, const struct options *o)
{
    if (!o)
    {
        o = &c->options;
    }





    if (!CIPHER_ENABLED(c))
    {
        frame_align_to_extra_frame(&c->c2.frame);
        frame_or_align_flags(&c->c2.frame,
                             FRAME_HEADROOM_MARKER_FRAGMENT
                             |FRAME_HEADROOM_MARKER_READ_LINK
                             |FRAME_HEADROOM_MARKER_READ_STREAM);
    }

    frame_add_to_extra_buffer(&c->c2.frame, PAYLOAD_ALIGN);
    frame_finalize(&c->c2.frame,
                   o->ce.link_mtu_defined,
                   o->ce.link_mtu,
                   o->ce.tun_mtu_defined,
                   o->ce.tun_mtu);
}
