
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int connected; int bound; int sync; } ;


 int nn_list_init (int *) ;
 int nn_mutex_init (int *) ;
 TYPE_1__ self ;

void nn_ins_init (void)
{
    nn_mutex_init (&self.sync);
    nn_list_init (&self.bound);
    nn_list_init (&self.connected);
}
