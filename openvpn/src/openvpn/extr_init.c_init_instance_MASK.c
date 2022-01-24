#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ proto; scalar_t__ fragment; } ;
struct options {scalar_t__ up_delay; TYPE_2__ ce; int /*<<< orphan*/  comp; scalar_t__ mlock; scalar_t__ resolve_in_advance; } ;
struct env_set {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  did_open_tun; int /*<<< orphan*/  frame; int /*<<< orphan*/  frame_initial; int /*<<< orphan*/  comp_context; int /*<<< orphan*/  fragment; int /*<<< orphan*/  occ_op; int /*<<< orphan*/  gc; } ;
struct context {scalar_t__ mode; TYPE_1__* sig; scalar_t__ first_time; TYPE_3__ c2; struct options options; } ;
struct TYPE_4__ {char* signal_text; int /*<<< orphan*/  source; scalar_t__ signal_received; } ;

/* Variables and functions */
 scalar_t__ AR_INTERACT ; 
 unsigned int CF_INIT_TLS_AUTH_STANDALONE ; 
 unsigned int CF_INIT_TLS_MULTI ; 
 unsigned int CF_LOAD_PERSISTED_PACKET_ID ; 
 scalar_t__ CM_CHILD_TCP ; 
 scalar_t__ CM_CHILD_UDP ; 
 scalar_t__ CM_P2P ; 
 scalar_t__ CM_TOP ; 
 scalar_t__ FUNC0 (struct context*) ; 
 int /*<<< orphan*/  IVM_LEVEL_2 ; 
 int LS_MODE_DEFAULT ; 
 int LS_MODE_TCP_ACCEPT_FROM ; 
 int LS_MODE_TCP_LISTEN ; 
 int /*<<< orphan*/  OPENVPN_PLUGIN_INIT_POST_DAEMON ; 
 int /*<<< orphan*/  OPENVPN_PLUGIN_INIT_POST_UID_CHANGE ; 
 int /*<<< orphan*/  OPENVPN_PLUGIN_INIT_PRE_DAEMON ; 
 int /*<<< orphan*/  P2P_ERROR_DELAY_MS ; 
 scalar_t__ PROTO_TCP_SERVER ; 
 scalar_t__ FUNC1 (struct options const*) ; 
 int FUNC2 (struct options*) ; 
 int /*<<< orphan*/  SIG_SOURCE_SOFT ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct context*,int,unsigned int const) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct context*) ; 
 int /*<<< orphan*/  FUNC8 (struct context*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct context*,struct env_set const*) ; 
 int /*<<< orphan*/  FUNC10 (struct context*) ; 
 int /*<<< orphan*/  FUNC11 (struct context*,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (struct context*) ; 
 int /*<<< orphan*/  FUNC13 (struct context*) ; 
 int /*<<< orphan*/  FUNC14 (struct context*) ; 
 int /*<<< orphan*/  FUNC15 (struct context*) ; 
 int /*<<< orphan*/  FUNC16 (struct context*) ; 
 int /*<<< orphan*/  FUNC17 (struct context*,int) ; 
 int /*<<< orphan*/  FUNC18 (struct context*) ; 
 int /*<<< orphan*/  FUNC19 (struct context*,int) ; 
 int /*<<< orphan*/  FUNC20 (struct context*) ; 
 int /*<<< orphan*/  FUNC21 (struct context*) ; 
 int /*<<< orphan*/  FUNC22 (struct context*) ; 
 int /*<<< orphan*/  FUNC23 (struct context*) ; 
 int /*<<< orphan*/  FUNC24 (struct context*) ; 
 int /*<<< orphan*/  FUNC25 (struct context*) ; 
 int /*<<< orphan*/  FUNC26 (struct context*) ; 
 int /*<<< orphan*/  FUNC27 (struct context*) ; 
 int /*<<< orphan*/  FUNC28 (struct context*) ; 
 int /*<<< orphan*/  FUNC29 (struct context*) ; 
 int /*<<< orphan*/  FUNC30 (struct context*) ; 
 int /*<<< orphan*/  FUNC31 (struct context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ *,struct options*) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC35 (struct context*) ; 
 int /*<<< orphan*/  FUNC36 (struct context*) ; 
 int /*<<< orphan*/  FUNC37 (struct context*) ; 
 int /*<<< orphan*/  FUNC38 (struct context*) ; 
 int /*<<< orphan*/  FUNC39 (struct context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC40 (struct context*) ; 
 int /*<<< orphan*/  FUNC41 () ; 
 int /*<<< orphan*/  FUNC42 (struct context*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC43 (struct context*) ; 
 int /*<<< orphan*/  FUNC44 (int) ; 
 int /*<<< orphan*/  FUNC45 (int /*<<< orphan*/ ) ; 

void
FUNC46(struct context *c, const struct env_set *env, const unsigned int flags)
{
    const struct options *options = &c->options;
    const bool child = (c->mode == CM_CHILD_TCP || c->mode == CM_CHILD_UDP);
    int link_socket_mode = LS_MODE_DEFAULT;

    /* init garbage collection level */
    FUNC34(&c->c2.gc);

    /* inherit environmental variables */
    if (env)
    {
        FUNC9(c, env);
    }

    /* signals caught here will abort */
    c->sig->signal_received = 0;
    c->sig->signal_text = NULL;
    c->sig->source = SIG_SOURCE_SOFT;

    if (c->mode == CM_P2P)
    {
        FUNC35(c);
    }

    /* possible sleep or management hold if restart */
    if (c->mode == CM_P2P || c->mode == CM_TOP)
    {
        FUNC30(c);
        if (FUNC0(c))
        {
            goto sig;
        }
    }

    if (c->options.resolve_in_advance)
    {
        FUNC26(c);
        if (FUNC0(c))
        {
            goto sig;
        }
    }

    /* map in current connection entry */
    FUNC40(c);

    /* link_socket_mode allows CM_CHILD_TCP
     * instances to inherit acceptable fds
     * from a top-level parent */
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

    /* should we disable paging? */
    if (c->first_time && options->mlock)
    {
        FUNC44(true);
    }

#if P2MP
    /* get passwords if undefined */
    if (auth_retry_get() == AR_INTERACT)
    {
        init_query_passwords(c);
    }
#endif

    /* initialize context level 2 --verb/--mute parms */
    FUNC39(c, IVM_LEVEL_2);

    /* set error message delay for non-server modes */
    if (c->mode == CM_P2P)
    {
        FUNC45(P2P_ERROR_DELAY_MS);
    }

    /* warn about inconsistent options */
    if (c->mode == CM_P2P || c->mode == CM_TOP)
    {
        FUNC25(c);
    }

#ifdef ENABLE_PLUGIN
    /* initialize plugins */
    if (c->mode == CM_P2P || c->mode == CM_TOP)
    {
        open_plugins(c, false, OPENVPN_PLUGIN_INIT_PRE_DAEMON);
    }
#endif

    /* should we enable fast I/O? */
    if (c->mode == CM_P2P || c->mode == CM_TOP)
    {
        FUNC28(c);
    }

    /* should we throw a signal on TLS errors? */
    FUNC29(c);

    /* open --status file */
    if (c->mode == CM_P2P || c->mode == CM_TOP)
    {
        FUNC23(c);
    }

    /* open --ifconfig-pool-persist file */
    if (c->mode == CM_TOP)
    {
        FUNC22(c);
    }

#ifdef ENABLE_OCC
    /* reset OCC state */
    if (c->mode == CM_P2P || child)
    {
        c->c2.occ_op = occ_reset_op();
    }
#endif

    /* our wait-for-i/o objects, different for posix vs. win32 */
    if (c->mode == CM_P2P)
    {
        FUNC8(c, FUNC2(&c->options));
    }
    else if (c->mode == CM_CHILD_TCP)
    {
        FUNC8(c, false);
    }

    /* initialize HTTP or SOCKS proxy object at scope level 2 */
    FUNC37(c);

    /* allocate our socket object */
    if (c->mode == CM_P2P || c->mode == CM_TOP || c->mode == CM_CHILD_TCP)
    {
        FUNC21(c);
    }

#ifdef ENABLE_FRAGMENT
    /* initialize internal fragmentation object */
    if (options->ce.fragment && (c->mode == CM_P2P || child))
    {
        c->c2.fragment = fragment_init(&c->c2.frame);
    }
#endif

    /* init crypto layer */
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
        FUNC11(c, crypto_flags);
        if (FUNC0(c) && !child)
        {
            goto sig;
        }
    }

#ifdef USE_COMP
    /* initialize compression library. */
    if (comp_enabled(&options->comp) && (c->mode == CM_P2P || child))
    {
        c->c2.comp_context = comp_init(&options->comp);
    }
#endif

    /* initialize MTU variables */
    FUNC14(c);

    /* initialize TLS MTU variables */
    FUNC15(c);

    /* init workspace buffers whose size is derived from frame size */
    if (c->mode == CM_P2P || c->mode == CM_CHILD_TCP)
    {
        FUNC10(c);
    }

#ifdef ENABLE_FRAGMENT
    /* initialize internal fragmentation capability with known frame size */
    if (options->ce.fragment && (c->mode == CM_P2P || child))
    {
        do_init_fragment(c);
    }
#endif

    /* initialize dynamic MTU variable */
    FUNC33(&c->c2.frame, &c->options);

    /* bind the TCP/UDP socket */
    if (c->mode == CM_P2P || c->mode == CM_TOP || c->mode == CM_CHILD_TCP)
    {
        FUNC17(c, link_socket_mode);
    }

    /* initialize tun/tap device object,
     * open tun/tap device, ifconfig, run up script, etc. */
    if (!(options->up_delay || FUNC1(options)) && (c->mode == CM_P2P || c->mode == CM_TOP))
    {
        c->c2.did_open_tun = FUNC24(c);
    }

    c->c2.frame_initial = c->c2.frame;

    /* print MTU info */
    FUNC27(c);

#ifdef ENABLE_OCC
    /* get local and remote options compatibility strings */
    if (c->mode == CM_P2P || child)
    {
        do_compute_occ_strings(c);
    }
#endif

    /* initialize output speed limiter */
    if (c->mode == CM_P2P)
    {
        FUNC20(c);
    }

    /* do one-time inits, and possibly become a daemon here */
    FUNC12(c);

#ifdef ENABLE_PLUGIN
    /* initialize plugins */
    if (c->mode == CM_P2P || c->mode == CM_TOP)
    {
        open_plugins(c, false, OPENVPN_PLUGIN_INIT_POST_DAEMON);
    }
#endif

    /* initialise connect timeout timer */
    FUNC16(c);

    /* finalize the TCP/UDP socket */
    if (c->mode == CM_P2P || c->mode == CM_TOP || c->mode == CM_CHILD_TCP)
    {
        FUNC18(c);
    }

    /*
     * Actually do UID/GID downgrade, and chroot, if requested.
     * May be delayed by --client, --pull, or --up-delay.
     */
    FUNC31(c, c->c2.did_open_tun);

    /* initialize timers */
    if (c->mode == CM_P2P || child)
    {
        FUNC19(c, false);
    }

#ifdef ENABLE_PLUGIN
    /* initialize plugins */
    if (c->mode == CM_P2P || c->mode == CM_TOP)
    {
        open_plugins(c, false, OPENVPN_PLUGIN_INIT_POST_UID_CHANGE);
    }
#endif

#if PORT_SHARE
    /* share OpenVPN port with foreign (such as HTTPS) server */
    if (c->first_time && (c->mode == CM_P2P || c->mode == CM_TOP))
    {
        init_port_share(c);
    }
#endif

#ifdef ENABLE_PF
    if (child)
    {
        pf_init_context(c);
    }
#endif

    /* Check for signals */
    if (FUNC0(c))
    {
        goto sig;
    }

    return;

sig:
    if (!c->sig->signal_text)
    {
        c->sig->signal_text = "init_instance";
    }
    FUNC4(c, -1, flags);
    return;
}