
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int char_u ;
struct TYPE_6__ {int * name; } ;
struct TYPE_5__ {scalar_t__ (* tp_alloc ) (TYPE_1__*,int ) ;} ;
typedef TYPE_1__ PyTypeObject ;
typedef int PyObject ;
typedef TYPE_2__ FunctionObject ;


 int AUTOLOAD_CHAR ;
 int N_ (char*) ;
 int PyErr_FORMAT (int ,int ,int *) ;
 int PyExc_ValueError ;
 int func_ref (int *) ;
 int * get_expanded_name (int *,int ) ;
 scalar_t__ isdigit (int ) ;
 scalar_t__ stub1 (TYPE_1__*,int ) ;
 int translated_function_exists (int *) ;
 int * vim_strchr (int *,int ) ;
 int * vim_strsave (int *) ;

__attribute__((used)) static PyObject *
FunctionNew(PyTypeObject *subtype, char_u *name)
{
    FunctionObject *self;

    self = (FunctionObject *) subtype->tp_alloc(subtype, 0);

    if (self == ((void*)0))
 return ((void*)0);

    if (isdigit(*name))
    {
 if (!translated_function_exists(name))
 {
     PyErr_FORMAT(PyExc_ValueError,
      N_("unnamed function %s does not exist"), name);
     return ((void*)0);
 }
 self->name = vim_strsave(name);
 func_ref(self->name);
    }
    else
 if ((self->name = get_expanded_name(name,
        vim_strchr(name, AUTOLOAD_CHAR) == ((void*)0)))
  == ((void*)0))
 {
     PyErr_FORMAT(PyExc_ValueError,
      N_("function %s does not exist"), name);
     return ((void*)0);
 }

    return (PyObject *)(self);
}
