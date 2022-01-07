
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_transport {struct nn_optset* (* optset ) () ;} ;
struct nn_sock {struct nn_optset** optsets; } ;
struct nn_optset {int dummy; } ;


 int NN_MAX_TRANSPORT ;
 scalar_t__ nn_fast (int ) ;
 struct nn_transport* nn_global_transport (int) ;
 scalar_t__ nn_slow (int) ;
 struct nn_optset* stub1 () ;

__attribute__((used)) static struct nn_optset *nn_sock_optset (struct nn_sock *self, int id)
{
    int index;
    const struct nn_transport *tp;


    index = (-id) - 1;


    if (nn_slow (index < 0 || index >= NN_MAX_TRANSPORT))
        return ((void*)0);


    if (nn_fast (self->optsets [index] != ((void*)0)))
        return self->optsets [index];


    tp = nn_global_transport (id);
    if (nn_slow (!tp))
        return ((void*)0);
    if (nn_slow (!tp->optset))
        return ((void*)0);
    self->optsets [index] = tp->optset ();

    return self->optsets [index];
}
