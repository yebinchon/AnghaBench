
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int hv; int * it; } ;
typedef TYPE_1__ lru_bump_entry ;
struct TYPE_5__ {int mutex; int dropped; int buf; } ;
typedef TYPE_2__ lru_bump_buf ;
typedef int item ;


 scalar_t__ bipbuf_push (int ,int) ;
 scalar_t__ bipbuf_request (int ,int) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int refcount_decr (int *) ;
 int refcount_incr (int *) ;

__attribute__((used)) static bool lru_bump_async(lru_bump_buf *b, item *it, uint32_t hv) {
    bool ret = 1;
    refcount_incr(it);
    pthread_mutex_lock(&b->mutex);
    lru_bump_entry *be = (lru_bump_entry *) bipbuf_request(b->buf, sizeof(lru_bump_entry));
    if (be != ((void*)0)) {
        be->it = it;
        be->hv = hv;
        if (bipbuf_push(b->buf, sizeof(lru_bump_entry)) == 0) {
            ret = 0;
            b->dropped++;
        }
    } else {
        ret = 0;
        b->dropped++;
    }
    if (!ret) {
        refcount_decr(it);
    }
    pthread_mutex_unlock(&b->mutex);
    return ret;
}
