
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rlimit {int rlim_max; } ;
typedef int conn ;
struct TYPE_2__ {int maxconns; } ;


 int RLIMIT_NOFILE ;
 int * calloc (int,int) ;
 int close (int) ;
 int * conns ;
 int dup (int) ;
 int exit (int) ;
 int fprintf (int ,char*) ;
 scalar_t__ getrlimit (int ,struct rlimit*) ;
 int max_fds ;
 int perror (char*) ;
 TYPE_1__ settings ;
 int stderr ;

__attribute__((used)) static void conn_init(void) {

    int next_fd = dup(1);
    if (next_fd < 0) {
        perror("Failed to duplicate file descriptor\n");
        exit(1);
    }
    int headroom = 10;
    struct rlimit rl;

    max_fds = settings.maxconns + headroom + next_fd;


    if (getrlimit(RLIMIT_NOFILE, &rl) == 0) {
        max_fds = rl.rlim_max;
    } else {
        fprintf(stderr, "Failed to query maximum file descriptor; "
                        "falling back to maxconns\n");
    }

    close(next_fd);

    if ((conns = calloc(max_fds, sizeof(conn *))) == ((void*)0)) {
        fprintf(stderr, "Failed to allocate connection structures\n");

        exit(1);
    }
}
