
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_sockbase {int dummy; } ;
struct nn_xrespondent {struct nn_sockbase sockbase; } ;


 int alloc_assert (struct nn_xrespondent*) ;
 struct nn_xrespondent* nn_alloc (int,char*) ;
 int nn_xrespondent_init (struct nn_xrespondent*,int *,void*) ;
 int nn_xrespondent_sockbase_vfptr ;

__attribute__((used)) static int nn_xrespondent_create (void *hint, struct nn_sockbase **sockbase)
{
    struct nn_xrespondent *self;

    self = nn_alloc (sizeof (struct nn_xrespondent), "socket (xrespondent)");
    alloc_assert (self);
    nn_xrespondent_init (self, &nn_xrespondent_sockbase_vfptr, hint);
    *sockbase = &self->sockbase;

    return 0;
}
