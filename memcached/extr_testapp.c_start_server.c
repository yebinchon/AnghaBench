
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmo ;
typedef int pid_t ;
typedef int pid_file ;
typedef scalar_t__ int32_t ;
typedef scalar_t__ in_port_t ;
typedef int environment ;
typedef int coreadm ;
typedef int buffer ;
typedef int FILE ;


 int F_OK ;
 int access (char*,int ) ;
 int assert (int) ;
 scalar_t__ enable_ssl ;
 int errno ;
 int execv (char*,char**) ;
 int fclose (int *) ;
 int * fgets (char*,int,int *) ;
 int * fopen (char*,char*) ;
 int fork () ;
 int fprintf (int ,char*,char*) ;
 scalar_t__ getpid () ;
 scalar_t__ getuid () ;
 int putenv (char*) ;
 scalar_t__ remove (char*) ;
 int safe_strtol (char*,scalar_t__*) ;
 int snprintf (char*,int,char*,int) ;
 int stderr ;
 char* strerror (int ) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 int system (char*) ;
 int usleep (int) ;

__attribute__((used)) static pid_t start_server(in_port_t *port_out, bool daemon, int timeout) {
    char environment[80];
    snprintf(environment, sizeof(environment),
             "MEMCACHED_PORT_FILENAME=/tmp/ports.%lu", (long)getpid());
    char *filename= environment + strlen("MEMCACHED_PORT_FILENAME=");
    char pid_file[80];
    snprintf(pid_file, sizeof(pid_file), "/tmp/pid.%lu", (long)getpid());

    remove(filename);
    remove(pid_file);
    pid_t pid = fork();
    assert(pid != -1);

    if (pid == 0) {

        char *argv[24];
        int arg = 0;
        char tmo[24];
        snprintf(tmo, sizeof(tmo), "%u", timeout);

        putenv(environment);





        if (!daemon) {
            argv[arg++] = "./timedrun";
            argv[arg++] = tmo;
        }
        argv[arg++] = "./memcached-debug";
        argv[arg++] = "-A";
        argv[arg++] = "-p";
        argv[arg++] = "-1";
        argv[arg++] = "-U";
        argv[arg++] = "0";
        if (getuid() == 0) {
            argv[arg++] = "-u";
            argv[arg++] = "root";
        }
        if (daemon) {
            argv[arg++] = "-d";
            argv[arg++] = "-P";
            argv[arg++] = pid_file;
        }







        argv[arg++] = ((void*)0);
        assert(execv(argv[0], argv) != -1);
    }


    while (access(filename, F_OK) == -1) {
        usleep(10);
    }

    FILE *fp = fopen(filename, "r");
    if (fp == ((void*)0)) {
        fprintf(stderr, "Failed to open the file containing port numbers: %s\n",
                strerror(errno));
        assert(0);
    }

    *port_out = (in_port_t)-1;
    char buffer[80];
    while ((fgets(buffer, sizeof(buffer), fp)) != ((void*)0)) {
        if (strncmp(buffer, "TCP INET: ", 10) == 0) {
            int32_t val;
            assert(safe_strtol(buffer + 10, &val));
            *port_out = (in_port_t)val;
        }
    }
    fclose(fp);
    assert(remove(filename) == 0);

    if (daemon) {




        while (access(pid_file, F_OK) == -1) {
            usleep(10);
        }

        fp = fopen(pid_file, "r");
        if (fp == ((void*)0)) {
            fprintf(stderr, "Failed to open pid file: %s\n",
                    strerror(errno));
            assert(0);
        }


        for (int x = 0; x < 20 && fgets(buffer, sizeof(buffer), fp) == ((void*)0); x++) {
            usleep(10);
        }
        fclose(fp);

        int32_t val;
        assert(safe_strtol(buffer, &val));
        pid = (pid_t)val;
    }

    return pid;
}
