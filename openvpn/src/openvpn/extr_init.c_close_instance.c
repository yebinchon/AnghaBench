
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int gc; int pf; int mda_context; int * comp_context; } ;
struct context {scalar_t__ mode; TYPE_1__ c2; } ;


 scalar_t__ CM_CHILD_TCP ;
 scalar_t__ CM_CHILD_UDP ;
 scalar_t__ CM_P2P ;
 scalar_t__ CM_TOP ;
 int comp_uninit (int *) ;
 int do_close_check_if_restart_permitted (struct context*) ;
 int do_close_event_set (struct context*) ;
 int do_close_fragment (struct context*) ;
 int do_close_free_buf (struct context*) ;
 int do_close_free_key_schedule (struct context*,int) ;
 int do_close_ifconfig_pool_persist (struct context*) ;
 int do_close_link_socket (struct context*) ;
 int do_close_packet_id (struct context*) ;
 int do_close_plugins (struct context*) ;
 int do_close_status_output (struct context*) ;
 int do_close_tls (struct context*) ;
 int do_close_tun (struct context*,int) ;
 int do_env_set_destroy (struct context*) ;
 int gc_free (int *) ;
 scalar_t__ management ;
 int management_notify_client_close (scalar_t__,int *,int *) ;
 int pf_destroy_context (int *) ;
 int restore_ncp_options (struct context*) ;
 int uninit_proxy (struct context*) ;

void
close_instance(struct context *c)
{

    do_close_event_set(c);

    if (c->mode == CM_P2P
        || c->mode == CM_CHILD_TCP
        || c->mode == CM_CHILD_UDP
        || c->mode == CM_TOP)
    {

        do_close_check_if_restart_permitted(c);
        do_close_free_buf(c);


        do_close_tls(c);


        do_close_free_key_schedule(c, (c->mode == CM_P2P || c->mode == CM_TOP));

        restore_ncp_options(c);


        do_close_link_socket(c);


        do_close_tun(c, 0);
        do_close_packet_id(c);


        do_close_status_output(c);







        do_close_ifconfig_pool_persist(c);


        do_env_set_destroy(c);


        uninit_proxy(c);


        gc_free(&c->c2.gc);
    }
}
