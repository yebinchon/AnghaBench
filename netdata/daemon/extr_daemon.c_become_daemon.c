
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ssize_t ;


 int D_SYSTEM ;
 int O_CREAT ;
 int O_WRONLY ;
 scalar_t__ become_user (char const*,int) ;
 int close (int) ;
 int create_needed_dir (int ,int ,int ) ;
 int debug (int ,char*,char const*) ;
 int error (char*,char const*) ;
 int exit (int) ;
 int fork () ;
 scalar_t__ ftruncate (int,int ) ;
 int getgid () ;
 int getpid () ;
 int getuid () ;
 int netdata_configured_cache_dir ;
 int netdata_configured_varlib_dir ;
 int oom_score_adj () ;
 int open (char const*,int,int) ;
 int perror (char*) ;
 char const* pidfile ;
 int sched_setscheduler_set () ;
 scalar_t__ setsid () ;
 int sprintf (char*,char*,int) ;
 int strlen (char*) ;
 int umask (int) ;
 scalar_t__ write (int,char*,int ) ;

int become_daemon(int dont_fork, const char *user)
{
    if(!dont_fork) {
        int i = fork();
        if(i == -1) {
            perror("cannot fork");
            exit(1);
        }
        if(i != 0) {
            exit(0);
        }


        if (setsid() < 0) {
            perror("Cannot become session leader.");
            exit(2);
        }


        i = fork();
        if(i == -1) {
            perror("cannot fork");
            exit(1);
        }
        if(i != 0) {
            exit(0);
        }
    }


    int pidfd = -1;
    if(pidfile[0]) {
        pidfd = open(pidfile, O_WRONLY | O_CREAT, 0644);
        if(pidfd >= 0) {
            if(ftruncate(pidfd, 0) != 0)
                error("Cannot truncate pidfile '%s'.", pidfile);

            char b[100];
            sprintf(b, "%d\n", getpid());
            ssize_t i = write(pidfd, b, strlen(b));
            if(i <= 0)
                error("Cannot write pidfile '%s'.", pidfile);
        }
        else error("Failed to open pidfile '%s'.", pidfile);
    }


    umask(0007);


    oom_score_adj();


    sched_setscheduler_set();

    if(user && *user) {
        if(become_user(user, pidfd) != 0) {
            error("Cannot become user '%s'. Continuing as we are.", user);
        }
        else debug(D_SYSTEM, "Successfully became user '%s'.", user);
    }
    else {
        create_needed_dir(netdata_configured_cache_dir, getuid(), getgid());
        create_needed_dir(netdata_configured_varlib_dir, getuid(), getgid());
    }

    if(pidfd != -1)
        close(pidfd);

    return(0);
}
