#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  tmo ;
typedef  int pid_t ;
typedef  int /*<<< orphan*/  pid_file ;
typedef  scalar_t__ int32_t ;
typedef  scalar_t__ in_port_t ;
typedef  int /*<<< orphan*/  environment ;
typedef  int /*<<< orphan*/  coreadm ;
typedef  int /*<<< orphan*/  buffer ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  F_OK ; 
 int FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ enable_ssl ; 
 int /*<<< orphan*/  errno ; 
 int FUNC2 (char*,char**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char*,char*) ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC8 () ; 
 scalar_t__ FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 scalar_t__ FUNC11 (char*) ; 
 int FUNC12 (char*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC13 (char*,int,char*,int) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (char*) ; 
 scalar_t__ FUNC16 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 int /*<<< orphan*/  FUNC18 (int) ; 

__attribute__((used)) static pid_t FUNC19(in_port_t *port_out, bool daemon, int timeout) {
    char environment[80];
    FUNC13(environment, sizeof(environment),
             "MEMCACHED_PORT_FILENAME=/tmp/ports.%lu", (long)FUNC8());
    char *filename= environment + FUNC15("MEMCACHED_PORT_FILENAME=");
    char pid_file[80];
    FUNC13(pid_file, sizeof(pid_file), "/tmp/pid.%lu", (long)FUNC8());

    FUNC11(filename);
    FUNC11(pid_file);

#ifdef __sun
    /* I want to name the corefiles differently so that they don't
       overwrite each other
    */
    char coreadm[128];
    snprintf(coreadm, sizeof(coreadm),
             "coreadm -p core.%%f.%%p %lu", (unsigned long)getpid());
    system(coreadm);
#endif

    pid_t pid = FUNC6();
    FUNC1(pid != -1);

    if (pid == 0) {
        /* Child */
        char *argv[24];
        int arg = 0;
        char tmo[24];
        FUNC13(tmo, sizeof(tmo), "%u", timeout);

        FUNC10(environment);
#ifdef __sun
        putenv("LD_PRELOAD=watchmalloc.so.1");
        putenv("MALLOC_DEBUG=WATCH");
#endif

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
#ifdef TLS
        if (enable_ssl) {
            argv[arg++] = "-Z";
            argv[arg++] = "-o";
            argv[arg++] = "ssl_chain_cert=t/server_crt.pem";
            argv[arg++] = "-o";
            argv[arg++] = "ssl_key=t/server_key.pem";
        }
#endif
        /* Handle rpmbuild and the like doing this as root */
        if (FUNC9() == 0) {
            argv[arg++] = "-u";
            argv[arg++] = "root";
        }
        if (daemon) {
            argv[arg++] = "-d";
            argv[arg++] = "-P";
            argv[arg++] = pid_file;
        }
#ifdef MESSAGE_DEBUG
         argv[arg++] = "-vvv";
#endif
#ifdef HAVE_DROP_PRIVILEGES
        argv[arg++] = "-o";
        argv[arg++] = "relaxed_privileges";
#endif
        argv[arg++] = NULL;
        FUNC1(FUNC2(argv[0], argv) != -1);
    }

    /* Yeah just let us "busy-wait" for the file to be created ;-) */
    while (FUNC0(filename, F_OK) == -1) {
        FUNC18(10);
    }

    FILE *fp = FUNC5(filename, "r");
    if (fp == NULL) {
        FUNC7(stderr, "Failed to open the file containing port numbers: %s\n",
                FUNC14(errno));
        FUNC1(false);
    }

    *port_out = (in_port_t)-1;
    char buffer[80];
    while ((FUNC4(buffer, sizeof(buffer), fp)) != NULL) {
        if (FUNC16(buffer, "TCP INET: ", 10) == 0) {
            int32_t val;
            FUNC1(FUNC12(buffer + 10, &val));
            *port_out = (in_port_t)val;
        }
    }
    FUNC3(fp);
    FUNC1(FUNC11(filename) == 0);

    if (daemon) {
        /* loop and wait for the pid file.. There is a potential race
         * condition that the server just created the file but isn't
         * finished writing the content, so we loop a few times
         * reading as well */
        while (FUNC0(pid_file, F_OK) == -1) {
            FUNC18(10);
        }

        fp = FUNC5(pid_file, "r");
        if (fp == NULL) {
            FUNC7(stderr, "Failed to open pid file: %s\n",
                    FUNC14(errno));
            FUNC1(false);
        }

        /* Avoid race by retrying 20 times */
        for (int x = 0; x < 20 && FUNC4(buffer, sizeof(buffer), fp) == NULL; x++) {
            FUNC18(10);
        }
        FUNC3(fp);

        int32_t val;
        FUNC1(FUNC12(buffer, &val));
        pid = (pid_t)val;
    }

    return pid;
}