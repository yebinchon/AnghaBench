
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int name; } ;
typedef TYPE_1__ FunctionObject ;


 int DESTRUCTOR_FINISH (TYPE_1__*) ;
 int func_unref (int ) ;
 int vim_free (int ) ;

__attribute__((used)) static void
FunctionDestructor(FunctionObject *self)
{
    func_unref(self->name);
    vim_free(self->name);

    DESTRUCTOR_FINISH(self);
}
