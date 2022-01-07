
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int hv; int it; } ;
typedef TYPE_1__ lru_bump_entry ;
struct TYPE_5__ {int mutex; int buf; struct TYPE_5__* next; } ;
typedef TYPE_2__ lru_bump_buf ;


 scalar_t__ bipbuf_peek_all (int ,unsigned int*) ;
 scalar_t__ bipbuf_poll (int ,unsigned int) ;
 TYPE_2__* bump_buf_head ;
 int bump_buf_lock ;
 int do_item_remove (int ) ;
 int do_item_update (int ) ;
 int item_lock (int ) ;
 int item_unlock (int ) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static bool lru_maintainer_bumps(void) {
    lru_bump_buf *b;
    lru_bump_entry *be;
    unsigned int size;
    unsigned int todo;
    bool bumped = 0;
    pthread_mutex_lock(&bump_buf_lock);
    for (b = bump_buf_head; b != ((void*)0); b=b->next) {
        pthread_mutex_lock(&b->mutex);
        be = (lru_bump_entry *) bipbuf_peek_all(b->buf, &size);
        pthread_mutex_unlock(&b->mutex);

        if (be == ((void*)0)) {
            continue;
        }
        todo = size;
        bumped = 1;

        while (todo) {
            item_lock(be->hv);
            do_item_update(be->it);
            do_item_remove(be->it);
            item_unlock(be->hv);
            be++;
            todo -= sizeof(lru_bump_entry);
        }

        pthread_mutex_lock(&b->mutex);
        be = (lru_bump_entry *) bipbuf_poll(b->buf, size);
        pthread_mutex_unlock(&b->mutex);
    }
    pthread_mutex_unlock(&bump_buf_lock);
    return bumped;
}
