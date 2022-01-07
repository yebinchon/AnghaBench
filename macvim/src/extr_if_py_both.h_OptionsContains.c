
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ char_u ;
struct TYPE_3__ {int opt_type; } ;
typedef int PyObject ;
typedef TYPE_1__ OptionsObject ;


 scalar_t__ NUL ;
 int Py_XDECREF (int *) ;
 scalar_t__* StringToChars (int *,int **) ;
 scalar_t__ get_option_value_strict (scalar_t__*,int *,int *,int ,int *) ;

__attribute__((used)) static int
OptionsContains(OptionsObject *self, PyObject *keyObject)
{
    char_u *key;
    PyObject *todecref;

    if (!(key = StringToChars(keyObject, &todecref)))
 return -1;

    if (*key == NUL)
    {
 Py_XDECREF(todecref);
 return 0;
    }

    if (get_option_value_strict(key, ((void*)0), ((void*)0), self->opt_type, ((void*)0)))
    {
 Py_XDECREF(todecref);
 return 1;
    }
    else
    {
 Py_XDECREF(todecref);
 return 0;
    }
}
