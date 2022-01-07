
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_xpush {int sockbase; int lb; } ;


 int nn_lb_term (int *) ;
 int nn_sockbase_term (int *) ;

__attribute__((used)) static void nn_xpush_term (struct nn_xpush *self)
{
    nn_lb_term (&self->lb);
    nn_sockbase_term (&self->sockbase);
}
