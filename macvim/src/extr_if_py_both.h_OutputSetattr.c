
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int softspace; } ;
typedef int PyObject ;
typedef TYPE_1__ OutputObject ;


 int NUMBER_UNSIGNED ;
 int N_ (char*) ;
 scalar_t__ NumberToLong (int *,int *,int ) ;
 int PyErr_FORMAT (int ,int ,char*) ;
 int PyErr_SET_STRING (int ,int ) ;
 int PyExc_AttributeError ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static int
OutputSetattr(OutputObject *self, char *name, PyObject *valObject)
{
    if (valObject == ((void*)0))
    {
 PyErr_SET_STRING(PyExc_AttributeError,
  N_("can't delete OutputObject attributes"));
 return -1;
    }

    if (strcmp(name, "softspace") == 0)
    {
 if (NumberToLong(valObject, &(self->softspace), NUMBER_UNSIGNED))
     return -1;
 return 0;
    }

    PyErr_FORMAT(PyExc_AttributeError, N_("invalid attribute: %s"), name);
    return -1;
}
