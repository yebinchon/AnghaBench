
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cancel_main_threads () ;
 int error (char*,scalar_t__*) ;
 int error_log_limit_unlimited () ;
 int exit (int) ;
 int info (char*,...) ;
 scalar_t__* pidfile ;
 int rrdhost_cleanup_all () ;
 int rrdhost_free_all () ;
 int security_clean_openssl () ;
 int send_statistics (char*,char*,char*) ;
 scalar_t__ unlink (scalar_t__*) ;

void netdata_cleanup_and_exit(int ret) {




    error_log_limit_unlimited();
    info("EXIT: netdata prepares to exit with code %d...", ret);

    send_statistics("EXIT", ret?"ERROR":"OK","-");


    info("EXIT: cleaning up the database...");
    rrdhost_cleanup_all();

    if(!ret) {



        info("EXIT: stopping master threads...");
        cancel_main_threads();


        info("EXIT: freeing database memory...");
        rrdhost_free_all();
    }


    if(pidfile[0]) {
        info("EXIT: removing netdata PID file '%s'...", pidfile);
        if(unlink(pidfile) != 0)
            error("EXIT: cannot unlink pidfile '%s'.", pidfile);
    }





    info("EXIT: all done - netdata is now exiting - bye bye...");
    exit(ret);
}
