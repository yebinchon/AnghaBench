
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {int management_flags; int mode; int writepid; } ;
struct context {int first_time; scalar_t__ signal_received; int net_ctx; int gc; TYPE_1__ options; int es; struct context* sig; int did_we_daemonize; } ;


 int ASSERT (int ) ;
 int CLEAR (struct context) ;
 int CP_UTF8 ;
 scalar_t__ IS_SIG (struct context*) ;
 int IVM_LEVEL_1 ;
 int MF_QUERY_PASSWORDS ;


 int M_INFO ;
 int M_USAGE ;
 int OPENVPN_EXIT_STATUS_GOOD ;
 int OPENVPN_PLUGIN_INIT_PRE_CONFIG_PARSE ;
 int OPT_P_DEFAULT ;
 scalar_t__ SIGHUP ;
 scalar_t__ SIGUSR1 ;
 int SetConsoleOutputCP (int ) ;
 int close_management () ;
 int context_clear_all_except_first_time (struct context*) ;
 int context_gc_free (struct context*) ;
 int context_init_1 (struct context*) ;
 scalar_t__ do_genkey (TYPE_1__*) ;
 scalar_t__ do_persist_tuntap (TYPE_1__*,int *) ;
 scalar_t__ do_test_crypto (TYPE_1__*) ;
 int env_set_create (int *) ;
 int env_set_destroy (int ) ;
 int fprintf (int ,char*) ;
 int gc_init (int *) ;
 int gc_reset (int *) ;
 int init_management () ;
 int init_options (TYPE_1__*,int) ;
 int init_options_dev (TYPE_1__*) ;
 int init_plugins (struct context*) ;
 int init_query_passwords (struct context*) ;
 scalar_t__ init_static () ;
 int init_verb_mute (struct context*,int ) ;
 int msg (int ,char*,int ) ;
 int net_ctx_free (int *) ;
 int net_ctx_init (struct context*,int *) ;
 int open_management (struct context*) ;
 int open_plugins (struct context*,int,int ) ;
 int openvpn_exit (int ) ;
 int options_postprocess (TYPE_1__*) ;
 int parse_argv (TYPE_1__*,int,char**,int ,int ,int *,int ) ;
 int possibly_become_daemon (TYPE_1__*) ;
 int pre_init_signal_catch () ;
 int pre_setup (TYPE_1__*) ;
 scalar_t__ print_openssl_info (TYPE_1__*) ;
 int print_signal (struct context*,int *,int ) ;
 int set_win_sys_path_via_env (int ) ;
 int setenv_settings (int ,TYPE_1__*) ;
 int show_library_versions (int ) ;
 int show_settings (TYPE_1__*) ;
 int show_windows_version (int ) ;
 struct context siginfo_static ;
 int signal_restart_status (struct context*) ;
 int stderr ;
 int title_string ;
 int tunnel_point_to_point (struct context*) ;
 int tunnel_server (struct context*) ;
 int uninit_options (TYPE_1__*) ;
 int uninit_static () ;
 int write_pid (int ) ;

__attribute__((used)) static
int
openvpn_main(int argc, char *argv[])
{
    struct context c;
    CLEAR(c);



    c.first_time = 1;


    if (init_static())
    {




        do
        {

            pre_init_signal_catch();


            context_clear_all_except_first_time(&c);


            CLEAR(siginfo_static);
            c.sig = &siginfo_static;


            gc_init(&c.gc);


            c.es = env_set_create(((void*)0));
            init_options(&c.options, 1);


            parse_argv(&c.options, argc, argv, M_USAGE, OPT_P_DEFAULT, ((void*)0), c.es);
            net_ctx_init(&c, &c.net_ctx);


            init_verb_mute(&c, IVM_LEVEL_1);


            init_options_dev(&c.options);


            if (print_openssl_info(&c.options))
            {
                break;
            }


            if (do_genkey(&c.options))
            {
                break;
            }


            if (do_persist_tuntap(&c.options, &c.net_ctx))
            {
                break;
            }


            options_postprocess(&c.options);


            show_settings(&c.options);


            msg(M_INFO, "%s", title_string);



            show_library_versions(M_INFO);


            pre_setup(&c.options);


            if (do_test_crypto(&c.options))
            {
                break;
            }






            init_query_passwords(&c);


            if (c.first_time)
            {
                c.did_we_daemonize = possibly_become_daemon(&c.options);
                write_pid(c.options.writepid);
            }
            setenv_settings(c.es, &c.options);


            context_init_1(&c);

            do
            {

                switch (c.options.mode)
                {
                    case 129:
                        tunnel_point_to_point(&c);
                        break;







                    default:
                        ASSERT(0);
                }


                c.first_time = 0;


                if (IS_SIG(&c))
                {
                    print_signal(c.sig, ((void*)0), M_INFO);
                }


                signal_restart_status(c.sig);
            }
            while (c.sig->signal_received == SIGUSR1);

            env_set_destroy(c.es);
            uninit_options(&c.options);
            gc_reset(&c.gc);
            net_ctx_free(&c.net_ctx);
        }
        while (c.sig->signal_received == SIGHUP);
    }

    context_gc_free(&c);







    uninit_static();

    openvpn_exit(OPENVPN_EXIT_STATUS_GOOD);
    return 0;
}
