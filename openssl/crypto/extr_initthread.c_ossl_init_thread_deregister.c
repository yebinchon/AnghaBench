
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int init_thread_deregister (void*,int ) ;

int ossl_init_thread_deregister(void *index)
{
    return init_thread_deregister(index, 0);
}
