
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct nn_atomic {int sync; int n; } ;


 int nn_mutex_init (int *) ;

void nn_atomic_init (struct nn_atomic *self, uint32_t n)
{
    self->n = n;



}
