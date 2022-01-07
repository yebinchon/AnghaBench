
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_sockbase_vfptr {int dummy; } ;
struct nn_respondent {scalar_t__ flags; int xrespondent; } ;


 int nn_xrespondent_init (int *,struct nn_sockbase_vfptr const*,void*) ;

__attribute__((used)) static void nn_respondent_init (struct nn_respondent *self,
    const struct nn_sockbase_vfptr *vfptr, void *hint)
{
    nn_xrespondent_init (&self->xrespondent, vfptr, hint);
    self->flags = 0;
}
