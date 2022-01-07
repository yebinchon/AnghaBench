
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int action; char* name; scalar_t__ count; } ;


 int D_CHILDS ;
 scalar_t__ EINTR ;

 int NETDATA_SIGNAL_END_OF_LIST ;





 int debug (int ,char*,char const*) ;
 scalar_t__ errno ;
 int error (char*) ;
 int error_log_limit_reset () ;
 int error_log_limit_unlimited () ;
 int exit (int ) ;
 int fatal (char*,char const*) ;
 int health_reload () ;
 int info (char*,...) ;
 int netdata_cleanup_and_exit (int ) ;
 int pause () ;
 int reap_children () ;
 int reopen_all_log_files () ;
 int rrdhost_save_all () ;
 TYPE_1__* signals_waiting ;

void signals_handle(void) {
    while(1) {




        if(pause() == -1 && errno == EINTR) {




            int found = 1;
            while(found) {
                found = 0;


                int i;
                for (i = 0; signals_waiting[i].action != NETDATA_SIGNAL_END_OF_LIST; i++) {
                    if (signals_waiting[i].count) {
                        found = 1;
                        signals_waiting[i].count = 0;
                        const char *name = signals_waiting[i].name;

                        switch (signals_waiting[i].action) {
                            case 129:
                                error_log_limit_unlimited();
                                info("SIGNAL: Received %s. Reloading HEALTH configuration...", name);
                                health_reload();
                                error_log_limit_reset();
                                break;

                            case 128:
                                error_log_limit_unlimited();
                                info("SIGNAL: Received %s. Saving databases...", name);
                                rrdhost_save_all();
                                info("Databases saved.");
                                error_log_limit_reset();
                                break;

                            case 130:
                                error_log_limit_unlimited();
                                info("SIGNAL: Received %s. Reopening all log files...", name);
                                reopen_all_log_files();
                                error_log_limit_reset();
                                break;

                            case 132:
                                error_log_limit_unlimited();
                                info("SIGNAL: Received %s. Cleaning up to exit...", name);
                                netdata_cleanup_and_exit(0);
                                exit(0);

                            case 131:
                                fatal("SIGNAL: Received %s. netdata now exits.", name);

                            case 133:
                                debug(D_CHILDS, "SIGNAL: Received %s. Reaping...", name);
                                reap_children();
                                break;

                            default:
                                info("SIGNAL: Received %s. No signal handler configured. Ignoring it.", name);
                                break;
                        }
                    }
                }
            }
        }
        else
            error("SIGNAL: pause() returned but it was not interrupted by a signal.");
    }
}
