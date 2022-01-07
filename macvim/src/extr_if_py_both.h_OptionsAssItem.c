
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ char_u ;
struct TYPE_3__ {scalar_t__ opt_type; int from; scalar_t__ (* Check ) (int ) ;} ;
typedef int PyObject ;
typedef TYPE_1__ OptionsObject ;


 scalar_t__ NUL ;
 int NUMBER_INT ;
 int N_ (char*) ;
 scalar_t__ NumberToLong (int *,long*,int ) ;
 int OPT_GLOBAL ;
 int OPT_LOCAL ;
 int PyErr_FORMAT (int ,int ,scalar_t__*) ;
 int PyErr_SetObject (int ,int *) ;
 int PyExc_KeyError ;
 int PyExc_ValueError ;
 int PyObject_IsTrue (int *) ;
 int Py_XDECREF (int *) ;
 int RAISE_NO_EMPTY_KEYS ;
 int SOPT_BOOL ;
 int SOPT_GLOBAL ;
 int SOPT_NUM ;
 scalar_t__ SREQ_GLOBAL ;
 scalar_t__* StringToChars (int *,int **) ;
 int get_option_value_strict (scalar_t__*,int *,int *,scalar_t__,int ) ;
 int set_option_value_for (scalar_t__*,int,scalar_t__*,int,scalar_t__,int ) ;
 scalar_t__ stub1 (int ) ;
 int unset_global_local_option (scalar_t__*,int ) ;

__attribute__((used)) static int
OptionsAssItem(OptionsObject *self, PyObject *keyObject, PyObject *valObject)
{
    char_u *key;
    int flags;
    int opt_flags;
    int ret = 0;
    PyObject *todecref;

    if (self->Check(self->from))
 return -1;

    if (!(key = StringToChars(keyObject, &todecref)))
 return -1;

    if (*key == NUL)
    {
 RAISE_NO_EMPTY_KEYS;
 Py_XDECREF(todecref);
 return -1;
    }

    flags = get_option_value_strict(key, ((void*)0), ((void*)0),
        self->opt_type, self->from);

    if (flags == 0)
    {
 PyErr_SetObject(PyExc_KeyError, keyObject);
 Py_XDECREF(todecref);
 return -1;
    }

    if (valObject == ((void*)0))
    {
 if (self->opt_type == SREQ_GLOBAL)
 {
     PyErr_FORMAT(PyExc_ValueError,
      N_("unable to unset global option %s"), key);
     Py_XDECREF(todecref);
     return -1;
 }
 else if (!(flags & SOPT_GLOBAL))
 {
     PyErr_FORMAT(PyExc_ValueError,
      N_("unable to unset option %s "
         "which does not have global value"), key);
     Py_XDECREF(todecref);
     return -1;
 }
 else
 {
     unset_global_local_option(key, self->from);
     Py_XDECREF(todecref);
     return 0;
 }
    }

    opt_flags = (self->opt_type ? OPT_LOCAL : OPT_GLOBAL);

    if (flags & SOPT_BOOL)
    {
 int istrue = PyObject_IsTrue(valObject);

 if (istrue == -1)
     ret = -1;
 else
     ret = set_option_value_for(key, istrue, ((void*)0),
        opt_flags, self->opt_type, self->from);
    }
    else if (flags & SOPT_NUM)
    {
 long val;

 if (NumberToLong(valObject, &val, NUMBER_INT))
 {
     Py_XDECREF(todecref);
     return -1;
 }

 ret = set_option_value_for(key, (int) val, ((void*)0), opt_flags,
    self->opt_type, self->from);
    }
    else
    {
 char_u *val;
 PyObject *todecref2;

 if ((val = StringToChars(valObject, &todecref2)))
 {
     ret = set_option_value_for(key, 0, val, opt_flags,
        self->opt_type, self->from);
     Py_XDECREF(todecref2);
 }
 else
     ret = -1;
    }

    Py_XDECREF(todecref);

    return ret;
}
