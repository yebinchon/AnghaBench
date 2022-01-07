
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct completion {int mutex; int cond; scalar_t__ completed; } ;


 int assert (int) ;
 scalar_t__ uv_cond_init (int *) ;
 scalar_t__ uv_mutex_init (int *) ;

__attribute__((used)) static inline void init_completion(struct completion *p)
{
    p->completed = 0;
    assert(0 == uv_cond_init(&p->cond));
    assert(0 == uv_mutex_init(&p->mutex));
}
