
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct completion {int completed; int mutex; int cond; } ;


 int assert (int) ;
 int uv_cond_wait (int *,int *) ;
 int uv_mutex_lock (int *) ;
 int uv_mutex_unlock (int *) ;

__attribute__((used)) static inline void wait_for_completion(struct completion *p)
{
    uv_mutex_lock(&p->mutex);
    while (0 == p->completed) {
        uv_cond_wait(&p->cond, &p->mutex);
    }
    assert(1 == p->completed);
    uv_mutex_unlock(&p->mutex);
}
