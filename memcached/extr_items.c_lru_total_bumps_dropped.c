
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int mutex; scalar_t__ dropped; struct TYPE_3__* next; } ;
typedef TYPE_1__ lru_bump_buf ;


 TYPE_1__* bump_buf_head ;
 int bump_buf_lock ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static uint64_t lru_total_bumps_dropped(void) {
    uint64_t total = 0;
    lru_bump_buf *b;
    pthread_mutex_lock(&bump_buf_lock);
    for (b = bump_buf_head; b != ((void*)0); b=b->next) {
        pthread_mutex_lock(&b->mutex);
        total += b->dropped;
        pthread_mutex_unlock(&b->mutex);
    }
    pthread_mutex_unlock(&bump_buf_lock);
    return total;
}
