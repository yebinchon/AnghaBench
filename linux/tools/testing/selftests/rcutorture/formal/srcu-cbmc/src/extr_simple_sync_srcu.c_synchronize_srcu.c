
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srcu_struct {int completed; } ;


 int assume (int ) ;
 int might_sleep () ;
 int srcu_flip (struct srcu_struct*) ;
 int try_check_zero (struct srcu_struct*,int,int const) ;

void synchronize_srcu(struct srcu_struct *sp)
{
 int idx;




 const int trycount = 1;

 might_sleep();



 idx = 1 ^ (sp->completed & 1);



 assume(try_check_zero(sp, idx, trycount));

 srcu_flip(sp);

 assume(try_check_zero(sp, idx^1, trycount));
}
