
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int failed_flush; int t; int buf; int sfd; scalar_t__ c; } ;
typedef TYPE_1__ logger_watcher ;
struct TYPE_8__ {int (* read ) (scalar_t__,char*,int) ;int (* write ) (scalar_t__,unsigned char*,unsigned int) ;} ;
typedef TYPE_2__ conn ;
struct TYPE_9__ {int events; int revents; int fd; } ;


 scalar_t__ EAGAIN ;
 scalar_t__ EWOULDBLOCK ;


 int L_DEBUG (char*,...) ;
 int POLLERR ;
 int POLLHUP ;
 int POLLIN ;
 int POLLOUT ;
 int WATCHER_ALL ;
 int WATCHER_LIMIT ;
 unsigned char* bipbuf_peek_all (int ,unsigned int*) ;
 int bipbuf_poll (int ,int) ;
 int bipbuf_used (int ) ;
 scalar_t__ errno ;
 int fwrite (unsigned char*,int,unsigned int,int ) ;
 int logger_thread_close_watcher (TYPE_1__*) ;
 int perror (char*) ;
 int poll (TYPE_3__*,int,int ) ;
 int stderr ;
 int stub1 (scalar_t__,char*,int) ;
 int stub2 (scalar_t__,unsigned char*,unsigned int) ;
 TYPE_1__** watchers ;
 TYPE_3__* watchers_pollfds ;

__attribute__((used)) static int logger_thread_poll_watchers(int force_poll, int watcher) {
    int x;
    int nfd = 0;
    unsigned char *data;
    unsigned int data_size = 0;
    int flushed = 0;

    for (x = 0; x < WATCHER_LIMIT; x++) {
        logger_watcher *w = watchers[x];
        if (w == ((void*)0) || (watcher != WATCHER_ALL && x != watcher))
            continue;

        data = bipbuf_peek_all(w->buf, &data_size);
        if (data != ((void*)0)) {
            watchers_pollfds[nfd].fd = w->sfd;
            watchers_pollfds[nfd].events = POLLOUT;
            nfd++;
        } else if (force_poll) {
            watchers_pollfds[nfd].fd = w->sfd;
            watchers_pollfds[nfd].events = POLLIN;
            nfd++;
        }



        w->failed_flush = 0;
    }

    if (nfd == 0)
        return 0;


    int ret = poll(watchers_pollfds, nfd, 0);

    if (ret < 0) {
        perror("something failed with logger thread watcher fd polling");
        return -1;
    }

    nfd = 0;
    for (x = 0; x < WATCHER_LIMIT; x++) {
        logger_watcher *w = watchers[x];
        if (w == ((void*)0))
            continue;

        data_size = 0;



        if (watchers_pollfds[nfd].revents & POLLIN) {
            char buf[1];
            int res = ((conn*)w->c)->read(w->c, buf, 1);
            if (res == 0 || (res == -1 && (errno != EAGAIN && errno != EWOULDBLOCK))) {
                L_DEBUG("LOGGER: watcher closed remotely\n");
                logger_thread_close_watcher(w);
                nfd++;
                continue;
            }
        }
        if ((data = bipbuf_peek_all(w->buf, &data_size)) != ((void*)0)) {
            if (watchers_pollfds[nfd].revents & (POLLHUP|POLLERR)) {
                L_DEBUG("LOGGER: watcher closed during poll() call\n");
                logger_thread_close_watcher(w);
            } else if (watchers_pollfds[nfd].revents & POLLOUT) {
                int total = 0;


                switch (w->t) {
                    case 128:
                        total = fwrite(data, 1, data_size, stderr);
                        break;
                    case 129:
                        total = ((conn*)w->c)->write(w->c, data, data_size);
                        break;
                }

                L_DEBUG("LOGGER: poll() wrote %d to %d (data_size: %d) (bipbuf_used: %d)\n", total, w->sfd,
                        data_size, bipbuf_used(w->buf));
                if (total == -1) {
                    if (errno != EAGAIN && errno != EWOULDBLOCK) {
                        logger_thread_close_watcher(w);
                    }
                    L_DEBUG("LOGGER: watcher hit EAGAIN\n");
                } else if (total == 0) {
                    logger_thread_close_watcher(w);
                } else {
                    bipbuf_poll(w->buf, total);
                    flushed += total;
                }
            }
        }
        nfd++;
    }
    return flushed;
}
