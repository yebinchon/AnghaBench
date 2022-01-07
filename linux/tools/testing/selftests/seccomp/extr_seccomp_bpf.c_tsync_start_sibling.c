
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tsync_sibling {int tid; } ;


 int pthread_create (int *,int *,int ,void*) ;
 int tsync_sibling ;

void tsync_start_sibling(struct tsync_sibling *sibling)
{
 pthread_create(&sibling->tid, ((void*)0), tsync_sibling, (void *)sibling);
}
