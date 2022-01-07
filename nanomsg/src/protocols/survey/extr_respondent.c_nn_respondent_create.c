
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nn_sockbase {int dummy; } ;
struct TYPE_2__ {struct nn_sockbase sockbase; } ;
struct nn_respondent {TYPE_1__ xrespondent; } ;


 int alloc_assert (struct nn_respondent*) ;
 struct nn_respondent* nn_alloc (int,char*) ;
 int nn_respondent_init (struct nn_respondent*,int *,void*) ;
 int nn_respondent_sockbase_vfptr ;

__attribute__((used)) static int nn_respondent_create (void *hint, struct nn_sockbase **sockbase)
{
    struct nn_respondent *self;

    self = nn_alloc (sizeof (struct nn_respondent), "socket (respondent)");
    alloc_assert (self);
    nn_respondent_init (self, &nn_respondent_sockbase_vfptr, hint);
    *sockbase = &self->xrespondent.sockbase;

    return 0;
}
