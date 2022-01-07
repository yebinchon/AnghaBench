
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int READ_ONCE (int ) ;
 int WRITE_ONCE (int ,int) ;
 int __unbuffered_tpr_x ;
 int might_sleep () ;
 int ss ;
 int synchronize_srcu (int *) ;
 int x ;
 int y ;

void *thread_update(void *arg)
{
 WRITE_ONCE(y, 1);

 synchronize_srcu(&ss);

 might_sleep();
 __unbuffered_tpr_x = READ_ONCE(x);

 return ((void*)0);
}
