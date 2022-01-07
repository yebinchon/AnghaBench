
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int frame_fragment; int frame_fragment_initial; int frame_fragment_omit; int frame; } ;
struct TYPE_4__ {scalar_t__ fragment; scalar_t__ mssfix; int proto; int tun_mtu_extra; scalar_t__ tun_mtu_extra_defined; scalar_t__ socks_proxy_server; } ;
struct TYPE_5__ {TYPE_1__ ce; scalar_t__ mtu_test; int comp; } ;
struct context {TYPE_3__ c2; TYPE_2__ options; } ;


 scalar_t__ CIPHER_ENABLED (struct context*) ;
 int COMP_PREFIX_LEN ;
 scalar_t__ ETHERNET_MTU ;
 int FRAME_HEADROOM_MARKER_DECRYPT ;
 int FRAME_HEADROOM_MARKER_FRAGMENT ;
 int M_WARN ;
 scalar_t__ TUN_MTU_SIZE (int *) ;
 int comp_add_to_extra_buffer (int *) ;
 int comp_add_to_extra_frame (int *) ;
 scalar_t__ comp_enabled (int *) ;
 scalar_t__ comp_unswapped_prefix (int *) ;
 int frame_add_to_align_adjust (int *,int ) ;
 int frame_add_to_extra_link (int *,int) ;
 int frame_finalize_options (struct context*,int *) ;
 int frame_or_align_flags (int *,int) ;
 int frame_subtract_extra (int *,int *) ;
 int msg (int ,char*,...) ;
 int socket_adjust_frame_parameters (int *,int ) ;
 int socks_adjust_frame_parameters (int *,int ) ;
 int tun_adjust_frame_parameters (int *,int ) ;

__attribute__((used)) static void
do_init_frame(struct context *c)
{
    if (c->options.ce.socks_proxy_server)
    {
        socks_adjust_frame_parameters(&c->c2.frame, c->options.ce.proto);
    }




    if (c->options.ce.tun_mtu_extra_defined)
    {
        tun_adjust_frame_parameters(&c->c2.frame, c->options.ce.tun_mtu_extra);
    }






    socket_adjust_frame_parameters(&c->c2.frame, c->options.ce.proto);





    frame_finalize_options(c, ((void*)0));
    frame_add_to_extra_link(&c->c2.frame, 3);
}
