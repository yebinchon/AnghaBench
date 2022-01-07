
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ proto; scalar_t__ fragment; } ;
struct options {scalar_t__ up_delay; TYPE_2__ ce; int comp; scalar_t__ mlock; scalar_t__ resolve_in_advance; } ;
struct env_set {int dummy; } ;
struct TYPE_6__ {int did_open_tun; int frame; int frame_initial; int comp_context; int fragment; int occ_op; int gc; } ;
struct context {scalar_t__ mode; TYPE_1__* sig; scalar_t__ first_time; TYPE_3__ c2; struct options options; } ;
struct TYPE_4__ {char* signal_text; int source; scalar_t__ signal_received; } ;


 scalar_t__ AR_INTERACT ;
 unsigned int CF_INIT_TLS_AUTH_STANDALONE ;
 unsigned int CF_INIT_TLS_MULTI ;
 unsigned int CF_LOAD_PERSISTED_PACKET_ID ;
 scalar_t__ CM_CHILD_TCP ;
 scalar_t__ CM_CHILD_UDP ;
 scalar_t__ CM_P2P ;
 scalar_t__ CM_TOP ;
 scalar_t__ IS_SIG (struct context*) ;
 int IVM_LEVEL_2 ;
 int LS_MODE_DEFAULT ;
 int LS_MODE_TCP_ACCEPT_FROM ;
 int LS_MODE_TCP_LISTEN ;
 int OPENVPN_PLUGIN_INIT_POST_DAEMON ;
 int OPENVPN_PLUGIN_INIT_POST_UID_CHANGE ;
 int OPENVPN_PLUGIN_INIT_PRE_DAEMON ;
 int P2P_ERROR_DELAY_MS ;
 scalar_t__ PROTO_TCP_SERVER ;
 scalar_t__ PULL_DEFINED (struct options const*) ;
 int SHAPER_DEFINED (struct options*) ;
 int SIG_SOURCE_SOFT ;
 scalar_t__ auth_retry_get () ;
 int close_context (struct context*,int,unsigned int const) ;
 scalar_t__ comp_enabled (int *) ;
 int comp_init (int *) ;
 int do_compute_occ_strings (struct context*) ;
 int do_event_set_init (struct context*,int) ;
 int do_inherit_env (struct context*,struct env_set const*) ;
 int do_init_buffers (struct context*) ;
 int do_init_crypto (struct context*,unsigned int) ;
 int do_init_first_time (struct context*) ;
 int do_init_fragment (struct context*) ;
 int do_init_frame (struct context*) ;
 int do_init_frame_tls (struct context*) ;
 int do_init_server_poll_timeout (struct context*) ;
 int do_init_socket_1 (struct context*,int) ;
 int do_init_socket_2 (struct context*) ;
 int do_init_timers (struct context*,int) ;
 int do_init_traffic_shaper (struct context*) ;
 int do_link_socket_new (struct context*) ;
 int do_open_ifconfig_pool_persist (struct context*) ;
 int do_open_status_output (struct context*) ;
 int do_open_tun (struct context*) ;
 int do_option_warnings (struct context*) ;
 int do_preresolve (struct context*) ;
 int do_print_data_channel_mtu_parms (struct context*) ;
 int do_setup_fast_io (struct context*) ;
 int do_signal_on_tls_errors (struct context*) ;
 int do_startup_pause (struct context*) ;
 int do_uid_gid_chroot (struct context*,int ) ;
 int fragment_init (int *) ;
 int frame_init_mssfix (int *,struct options*) ;
 int gc_init (int *) ;
 int init_management_callback_p2p (struct context*) ;
 int init_port_share (struct context*) ;
 int init_proxy (struct context*) ;
 int init_query_passwords (struct context*) ;
 int init_verb_mute (struct context*,int ) ;
 int next_connection_entry (struct context*) ;
 int occ_reset_op () ;
 int open_plugins (struct context*,int,int ) ;
 int pf_init_context (struct context*) ;
 int platform_mlockall (int) ;
 int set_check_status_error_delay (int ) ;

void
init_instance(struct context *c, const struct env_set *env, const unsigned int flags)
{
    const struct options *options = &c->options;
    const bool child = (c->mode == CM_CHILD_TCP || c->mode == CM_CHILD_UDP);
    int link_socket_mode = LS_MODE_DEFAULT;


    gc_init(&c->c2.gc);


    if (env)
    {
        do_inherit_env(c, env);
    }


    c->sig->signal_received = 0;
    c->sig->signal_text = ((void*)0);
    c->sig->source = SIG_SOURCE_SOFT;

    if (c->mode == CM_P2P)
    {
        init_management_callback_p2p(c);
    }


    if (c->mode == CM_P2P || c->mode == CM_TOP)
    {
        do_startup_pause(c);
        if (IS_SIG(c))
        {
            goto sig;
        }
    }

    if (c->options.resolve_in_advance)
    {
        do_preresolve(c);
        if (IS_SIG(c))
        {
            goto sig;
        }
    }


    next_connection_entry(c);




    if (c->options.ce.proto == PROTO_TCP_SERVER)
    {
        if (c->mode == CM_TOP)
        {
            link_socket_mode = LS_MODE_TCP_LISTEN;
        }
        else if (c->mode == CM_CHILD_TCP)
        {
            link_socket_mode = LS_MODE_TCP_ACCEPT_FROM;
        }
    }


    if (c->first_time && options->mlock)
    {
        platform_mlockall(1);
    }
    init_verb_mute(c, IVM_LEVEL_2);


    if (c->mode == CM_P2P)
    {
        set_check_status_error_delay(P2P_ERROR_DELAY_MS);
    }


    if (c->mode == CM_P2P || c->mode == CM_TOP)
    {
        do_option_warnings(c);
    }
    if (c->mode == CM_P2P || c->mode == CM_TOP)
    {
        do_setup_fast_io(c);
    }


    do_signal_on_tls_errors(c);


    if (c->mode == CM_P2P || c->mode == CM_TOP)
    {
        do_open_status_output(c);
    }


    if (c->mode == CM_TOP)
    {
        do_open_ifconfig_pool_persist(c);
    }
    if (c->mode == CM_P2P)
    {
        do_event_set_init(c, SHAPER_DEFINED(&c->options));
    }
    else if (c->mode == CM_CHILD_TCP)
    {
        do_event_set_init(c, 0);
    }


    init_proxy(c);


    if (c->mode == CM_P2P || c->mode == CM_TOP || c->mode == CM_CHILD_TCP)
    {
        do_link_socket_new(c);
    }
    {
        unsigned int crypto_flags = 0;
        if (c->mode == CM_TOP)
        {
            crypto_flags = CF_INIT_TLS_AUTH_STANDALONE;
        }
        else if (c->mode == CM_P2P)
        {
            crypto_flags = CF_LOAD_PERSISTED_PACKET_ID | CF_INIT_TLS_MULTI;
        }
        else if (child)
        {
            crypto_flags = CF_INIT_TLS_MULTI;
        }
        do_init_crypto(c, crypto_flags);
        if (IS_SIG(c) && !child)
        {
            goto sig;
        }
    }
    do_init_frame(c);


    do_init_frame_tls(c);


    if (c->mode == CM_P2P || c->mode == CM_CHILD_TCP)
    {
        do_init_buffers(c);
    }
    frame_init_mssfix(&c->c2.frame, &c->options);


    if (c->mode == CM_P2P || c->mode == CM_TOP || c->mode == CM_CHILD_TCP)
    {
        do_init_socket_1(c, link_socket_mode);
    }



    if (!(options->up_delay || PULL_DEFINED(options)) && (c->mode == CM_P2P || c->mode == CM_TOP))
    {
        c->c2.did_open_tun = do_open_tun(c);
    }

    c->c2.frame_initial = c->c2.frame;


    do_print_data_channel_mtu_parms(c);
    if (c->mode == CM_P2P)
    {
        do_init_traffic_shaper(c);
    }


    do_init_first_time(c);
    do_init_server_poll_timeout(c);


    if (c->mode == CM_P2P || c->mode == CM_TOP || c->mode == CM_CHILD_TCP)
    {
        do_init_socket_2(c);
    }





    do_uid_gid_chroot(c, c->c2.did_open_tun);


    if (c->mode == CM_P2P || child)
    {
        do_init_timers(c, 0);
    }
    if (IS_SIG(c))
    {
        goto sig;
    }

    return;

sig:
    if (!c->sig->signal_text)
    {
        c->sig->signal_text = "init_instance";
    }
    close_context(c, -1, flags);
    return;
}
