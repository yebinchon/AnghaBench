
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* prev; struct TYPE_5__* next; } ;
typedef TYPE_1__ lru_bump_buf ;


 int assert (int) ;
 TYPE_1__* bump_buf_head ;
 int bump_buf_lock ;
 TYPE_1__* bump_buf_tail ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static void lru_bump_buf_link_q(lru_bump_buf *b) {
    pthread_mutex_lock(&bump_buf_lock);
    assert(b != bump_buf_head);

    b->prev = 0;
    b->next = bump_buf_head;
    if (b->next) b->next->prev = b;
    bump_buf_head = b;
    if (bump_buf_tail == 0) bump_buf_tail = b;
    pthread_mutex_unlock(&bump_buf_lock);
    return;
}
