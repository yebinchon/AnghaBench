
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_6__ {int sfd; int id; int * buf; int eflags; int t; void* c; } ;
typedef TYPE_1__ logger_watcher ;
typedef enum logger_add_watcher_ret { ____Placeholder_logger_add_watcher_ret } logger_add_watcher_ret ;
struct TYPE_7__ {int logger_watcher_buf_size; } ;


 int LOGGER_ADD_WATCHER_FAILED ;
 int LOGGER_ADD_WATCHER_OK ;
 int LOGGER_ADD_WATCHER_TOO_MANY ;
 int LOGGER_WATCHER_CLIENT ;
 int LOGGER_WATCHER_STDERR ;
 int WATCHER_LIMIT ;
 int * bipbuf_new (int ) ;
 int bipbuf_offer (int *,unsigned char*,int) ;
 TYPE_1__* calloc (int,int) ;
 int free (TYPE_1__*) ;
 int logger_set_flags () ;
 int logger_stack_lock ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 TYPE_3__ settings ;
 int watcher_count ;
 TYPE_1__** watchers ;

enum logger_add_watcher_ret logger_add_watcher(void *c, const int sfd, uint16_t f) {
    int x;
    logger_watcher *w = ((void*)0);
    pthread_mutex_lock(&logger_stack_lock);
    if (watcher_count >= WATCHER_LIMIT) {
        pthread_mutex_unlock(&logger_stack_lock);
        return LOGGER_ADD_WATCHER_TOO_MANY;
    }

    for (x = 0; x < WATCHER_LIMIT-1; x++) {
        if (watchers[x] == ((void*)0))
            break;
    }

    w = calloc(1, sizeof(logger_watcher));
    if (w == ((void*)0)) {
        pthread_mutex_unlock(&logger_stack_lock);
        return LOGGER_ADD_WATCHER_FAILED;
    }
    w->c = c;
    w->sfd = sfd;
    if (sfd == 0 && c == ((void*)0)) {
        w->t = LOGGER_WATCHER_STDERR;
    } else {
        w->t = LOGGER_WATCHER_CLIENT;
    }
    w->id = x;
    w->eflags = f;
    w->buf = bipbuf_new(settings.logger_watcher_buf_size);
    if (w->buf == ((void*)0)) {
        free(w);
        pthread_mutex_unlock(&logger_stack_lock);
        return LOGGER_ADD_WATCHER_FAILED;
    }
    bipbuf_offer(w->buf, (unsigned char *) "OK\r\n", 4);

    watchers[x] = w;
    watcher_count++;

    logger_set_flags();

    pthread_mutex_unlock(&logger_stack_lock);
    return LOGGER_ADD_WATCHER_OK;
}
