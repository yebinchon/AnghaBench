
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int netdata_rwlock_t ;


 int error (char*,int) ;
 int pthread_rwlock_init (int *,int *) ;
 scalar_t__ unlikely (int) ;

int __netdata_rwlock_init(netdata_rwlock_t *rwlock) {
    int ret = pthread_rwlock_init(rwlock, ((void*)0));
    if(unlikely(ret != 0))
        error("RW_LOCK: failed to initialize lock (code %d)", ret);
    return ret;
}
