
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int visitproc ;
struct TYPE_3__ {scalar_t__ identity; int identity_value; int obj; } ;
typedef TYPE_1__ PyUFuncObject ;


 scalar_t__ PyUFunc_IdentityValue ;
 int Py_VISIT (int ) ;

__attribute__((used)) static int
ufunc_traverse(PyUFuncObject *self, visitproc visit, void *arg)
{
    Py_VISIT(self->obj);
    if (self->identity == PyUFunc_IdentityValue) {
        Py_VISIT(self->identity_value);
    }
    return 0;
}
