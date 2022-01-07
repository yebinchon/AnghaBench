
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int length; int addr; } ;
struct TYPE_3__ {int size; int off; int fd; } ;
struct lwan_readahead_cmd {int cmd; TYPE_2__ madvise; TYPE_1__ readahead; } ;
typedef size_t ssize_t ;
typedef int cmd ;


 scalar_t__ EAGAIN ;
 scalar_t__ EINTR ;
 int IOPRIO_CLASS_IDLE ;
 int IOPRIO_PRIO_VALUE (int ,int) ;
 int IOPRIO_WHO_PROCESS ;

 int MADV_WILLNEED ;


 scalar_t__ UNLIKELY (size_t) ;
 scalar_t__ errno ;
 int ioprio_set (int ,int ,int ) ;
 int lwan_set_thread_name (char*) ;
 int lwan_status_perror (char*,int ) ;
 int lwan_status_warning (char*,size_t) ;
 int madvise (int ,int ,int ) ;
 int mlock (int ,int ) ;
 size_t read (int ,struct lwan_readahead_cmd*,int) ;
 int readahead (int ,int ,int ) ;
 int * readahead_pipe_fd ;

__attribute__((used)) static void *lwan_readahead_loop(void *data __attribute__((unused)))
{



    ioprio_set(IOPRIO_WHO_PROCESS, 0, IOPRIO_PRIO_VALUE(IOPRIO_CLASS_IDLE, 7));

    lwan_set_thread_name("readahead");

    while (1) {
        struct lwan_readahead_cmd cmd[16];
        ssize_t n_bytes = read(readahead_pipe_fd[0], cmd, sizeof(cmd));
        ssize_t cmds;

        if (UNLIKELY(n_bytes < 0)) {
            if (errno == EAGAIN || errno == EINTR)
                continue;
            lwan_status_perror("Ignoring error while reading from pipe (%d)",
                               readahead_pipe_fd[0]);
            continue;






        }

        cmds = n_bytes / (ssize_t)sizeof(struct lwan_readahead_cmd);
        for (ssize_t i = 0; i < cmds; i++) {
            switch (cmd[i].cmd) {
            case 129:
                readahead(cmd[i].readahead.fd, cmd[i].readahead.off,
                          cmd[i].readahead.size);
                break;
            case 130:
                madvise(cmd[i].madvise.addr, cmd[i].madvise.length,
                        MADV_WILLNEED);
                mlock(cmd[i].madvise.addr, cmd[i].madvise.length);
                break;
            case 128:
                goto out;
            }
        }
    }

out:
    return ((void*)0);
}
