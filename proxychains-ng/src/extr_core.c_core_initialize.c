
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MUTEX_INIT (int *) ;
 int servbyname_lock ;

void core_initialize(void) {
 MUTEX_INIT(&servbyname_lock);
}
