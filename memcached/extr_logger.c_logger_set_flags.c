
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_5__ {int eflags; } ;
typedef TYPE_1__ logger_watcher ;
struct TYPE_6__ {int mutex; int eflags; struct TYPE_6__* next; } ;
typedef TYPE_2__ logger ;


 int WATCHER_LIMIT ;
 TYPE_2__* logger_stack_head ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 TYPE_1__** watchers ;

__attribute__((used)) static void logger_set_flags(void) {
    logger *l = ((void*)0);
    int x = 0;
    uint16_t f = 0;

    for (x = 0; x < WATCHER_LIMIT; x++) {
        logger_watcher *w = watchers[x];
        if (w == ((void*)0))
            continue;

        f |= w->eflags;
    }
    for (l = logger_stack_head; l != ((void*)0); l=l->next) {
        pthread_mutex_lock(&l->mutex);
        l->eflags = f;
        pthread_mutex_unlock(&l->mutex);
    }
    return;
}
