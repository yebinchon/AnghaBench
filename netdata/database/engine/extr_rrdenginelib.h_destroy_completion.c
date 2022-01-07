
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct completion {int mutex; int cond; } ;


 int uv_cond_destroy (int *) ;
 int uv_mutex_destroy (int *) ;

__attribute__((used)) static inline void destroy_completion(struct completion *p)
{
    uv_cond_destroy(&p->cond);
    uv_mutex_destroy(&p->mutex);
}
