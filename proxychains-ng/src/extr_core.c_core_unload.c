
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MUTEX_DESTROY (int *) ;
 int servbyname_lock ;

void core_unload(void) {
 MUTEX_DESTROY(&servbyname_lock);
}
