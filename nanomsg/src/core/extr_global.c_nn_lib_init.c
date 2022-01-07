
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int inited; int cond; int lock; } ;


 int nn_condvar_init (int *) ;
 int nn_mutex_init (int *) ;
 TYPE_1__ self ;

__attribute__((used)) static void nn_lib_init(void)
{

    nn_mutex_init (&self.lock);
    nn_condvar_init (&self.cond);
    self.inited = 1;
}
