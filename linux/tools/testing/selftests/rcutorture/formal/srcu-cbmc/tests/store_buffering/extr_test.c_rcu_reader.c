
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int READ_ONCE (int ) ;
 int WRITE_ONCE (int ,int) ;
 int __unbuffered_tpr_y ;
 int might_sleep () ;
 int srcu_read_lock (int *) ;
 int srcu_read_unlock (int *,int) ;
 int ss ;
 int x ;
 int y ;

void rcu_reader(void)
{
 int idx;


 idx = srcu_read_lock(&ss);

 might_sleep();

 __unbuffered_tpr_y = READ_ONCE(y);




 WRITE_ONCE(x, 1);


 srcu_read_unlock(&ss, idx);

 might_sleep();
}
