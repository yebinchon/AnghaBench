
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* do_slabs_alloc (size_t,unsigned int,unsigned int) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int slabs_lock ;

void *slabs_alloc(size_t size, unsigned int id,
        unsigned int flags) {
    void *ret;

    pthread_mutex_lock(&slabs_lock);
    ret = do_slabs_alloc(size, id, flags);
    pthread_mutex_unlock(&slabs_lock);
    return ret;
}
