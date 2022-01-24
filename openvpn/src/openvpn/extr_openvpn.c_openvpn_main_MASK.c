#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int management_flags; int mode; int /*<<< orphan*/  writepid; } ;
struct context {int first_time; scalar_t__ signal_received; int /*<<< orphan*/  net_ctx; int /*<<< orphan*/  gc; TYPE_1__ options; int /*<<< orphan*/  es; struct context* sig; int /*<<< orphan*/  did_we_daemonize; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct context) ; 
 int /*<<< orphan*/  CP_UTF8 ; 
 scalar_t__ FUNC2 (struct context*) ; 
 int /*<<< orphan*/  IVM_LEVEL_1 ; 
 int MF_QUERY_PASSWORDS ; 
#define  MODE_POINT_TO_POINT 129 
#define  MODE_SERVER 128 
 int /*<<< orphan*/  M_INFO ; 
 int /*<<< orphan*/  M_USAGE ; 
 int /*<<< orphan*/  OPENVPN_EXIT_STATUS_GOOD ; 
 int /*<<< orphan*/  OPENVPN_PLUGIN_INIT_PRE_CONFIG_PARSE ; 
 int /*<<< orphan*/  OPT_P_DEFAULT ; 
 scalar_t__ SIGHUP ; 
 scalar_t__ SIGUSR1 ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct context*) ; 
 int /*<<< orphan*/  FUNC6 (struct context*) ; 
 int /*<<< orphan*/  FUNC7 (struct context*) ; 
 scalar_t__ FUNC8 (TYPE_1__*) ; 
 scalar_t__ FUNC9 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC19 (struct context*) ; 
 int /*<<< orphan*/  FUNC20 (struct context*) ; 
 scalar_t__ FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 (struct context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (struct context*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (struct context*) ; 
 int /*<<< orphan*/  FUNC27 (struct context*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC30 (TYPE_1__*,int,char**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC32 () ; 
 int /*<<< orphan*/  FUNC33 (TYPE_1__*) ; 
 scalar_t__ FUNC34 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC35 (struct context*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC37 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC38 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC39 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC40 (int /*<<< orphan*/ ) ; 
 struct context siginfo_static ; 
 int /*<<< orphan*/  FUNC41 (struct context*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  title_string ; 
 int /*<<< orphan*/  FUNC42 (struct context*) ; 
 int /*<<< orphan*/  FUNC43 (struct context*) ; 
 int /*<<< orphan*/  FUNC44 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC45 () ; 
 int /*<<< orphan*/  FUNC46 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static
int
FUNC47(int argc, char *argv[])
{
    struct context c;

#if PEDANTIC
    fprintf(stderr, "Sorry, I was built with --enable-pedantic and I am incapable of doing any real work!\n");
    return 1;
#endif

#ifdef _WIN32
    SetConsoleOutputCP(CP_UTF8);
#endif

    FUNC1(c);

    /* signify first time for components which can
     * only be initialized once per program instantiation. */
    c.first_time = true;

    /* initialize program-wide statics */
    if (FUNC21())
    {
        /*
         * This loop is initially executed on startup and then
         * once per SIGHUP.
         */
        do
        {
            /* enter pre-initialization mode with regard to signal handling */
            FUNC32();

            /* zero context struct but leave first_time member alone */
            FUNC5(&c);

            /* static signal info object */
            FUNC1(siginfo_static);
            c.sig = &siginfo_static;

            /* initialize garbage collector scoped to context object */
            FUNC14(&c.gc);

            /* initialize environmental variable store */
            c.es = FUNC11(NULL);
#ifdef _WIN32
            set_win_sys_path_via_env(c.es);
#endif

#ifdef ENABLE_MANAGEMENT
            /* initialize management subsystem */
            init_management();
#endif

            /* initialize options to default state */
            FUNC17(&c.options, true);

            /* parse command line options, and read configuration file */
            FUNC30(&c.options, argc, argv, M_USAGE, OPT_P_DEFAULT, NULL, c.es);

#ifdef ENABLE_PLUGIN
            /* plugins may contribute options configuration */
            init_verb_mute(&c, IVM_LEVEL_1);
            init_plugins(&c);
            open_plugins(&c, true, OPENVPN_PLUGIN_INIT_PRE_CONFIG_PARSE);
#endif

            FUNC25(&c, &c.net_ctx);

            /* init verbosity and mute levels */
            FUNC22(&c, IVM_LEVEL_1);

            /* set dev options */
            FUNC18(&c.options);

            /* openssl print info? */
            if (FUNC34(&c.options))
            {
                break;
            }

            /* --genkey mode? */
            if (FUNC8(&c.options))
            {
                break;
            }

            /* tun/tap persist command? */
            if (FUNC9(&c.options, &c.net_ctx))
            {
                break;
            }

            /* sanity check on options */
            FUNC29(&c.options);

            /* show all option settings */
            FUNC39(&c.options);

            /* print version number */
            FUNC23(M_INFO, "%s", title_string);
#ifdef _WIN32
            show_windows_version(M_INFO);
#endif
            FUNC38(M_INFO);

            /* misc stuff */
            FUNC33(&c.options);

            /* test crypto? */
            if (FUNC10(&c.options))
            {
                break;
            }

            /* Query passwords before becoming a daemon if we don't use the
             * management interface to get them. */
#ifdef ENABLE_MANAGEMENT
            if (!(c.options.management_flags & MF_QUERY_PASSWORDS))
#endif
            FUNC20(&c);

            /* become a daemon if --daemon */
            if (c.first_time)
            {
                c.did_we_daemonize = FUNC31(&c.options);
                FUNC46(c.options.writepid);
            }

#ifdef ENABLE_MANAGEMENT
            /* open management subsystem */
            if (!open_management(&c))
            {
                break;
            }
            /* query for passwords through management interface, if needed */
            if (c.options.management_flags & MF_QUERY_PASSWORDS)
            {
                init_query_passwords(&c);
            }
#endif

            /* set certain options as environmental variables */
            FUNC37(c.es, &c.options);

            /* finish context init */
            FUNC7(&c);

            do
            {
                /* run tunnel depending on mode */
                switch (c.options.mode)
                {
                    case MODE_POINT_TO_POINT:
                        FUNC42(&c);
                        break;

#if P2MP_SERVER
                    case MODE_SERVER:
                        tunnel_server(&c);
                        break;

#endif
                    default:
                        FUNC0(0);
                }

                /* indicates first iteration -- has program-wide scope */
                c.first_time = false;

                /* any signals received? */
                if (FUNC2(&c))
                {
                    FUNC35(c.sig, NULL, M_INFO);
                }

                /* pass restart status to management subsystem */
                FUNC41(c.sig);
            }
            while (c.sig->signal_received == SIGUSR1);

            FUNC12(c.es);
            FUNC44(&c.options);
            FUNC15(&c.gc);
            FUNC24(&c.net_ctx);
        }
        while (c.sig->signal_received == SIGHUP);
    }

    FUNC6(&c);

#ifdef ENABLE_MANAGEMENT
    /* close management interface */
    close_management();
#endif

    /* uninitialize program-wide statics */
    FUNC45();

    FUNC28(OPENVPN_EXIT_STATUS_GOOD); /* exit point */
    return 0;                               /* NOTREACHED */
}