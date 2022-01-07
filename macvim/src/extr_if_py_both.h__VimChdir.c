
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int char_u ;
typedef int PyObject ;


 int FALSE ;
 int N_ (char*) ;
 int PyErr_SET_VIM (int ) ;
 int * PyObject_Call (int *,int *,int *) ;
 int * PyObject_CallFunctionObjArgs (int ,int *) ;
 int Py_DECREF (int *) ;
 int Py_XDECREF (int *) ;
 int * StringToChars (int *,int **) ;
 scalar_t__ VimTryEnd () ;
 int VimTryStart () ;
 int post_chdir (int ) ;
 int py_getcwd ;
 scalar_t__ vim_chdir (int *) ;

__attribute__((used)) static PyObject *
_VimChdir(PyObject *_chdir, PyObject *args, PyObject *kwargs)
{
    PyObject *ret;
    PyObject *newwd;
    PyObject *todecref;
    char_u *new_dir;

    if (_chdir == ((void*)0))
 return ((void*)0);
    if (!(ret = PyObject_Call(_chdir, args, kwargs)))
 return ((void*)0);

    if (!(newwd = PyObject_CallFunctionObjArgs(py_getcwd, ((void*)0))))
    {
 Py_DECREF(ret);
 return ((void*)0);
    }

    if (!(new_dir = StringToChars(newwd, &todecref)))
    {
 Py_DECREF(ret);
 Py_DECREF(newwd);
 return ((void*)0);
    }

    VimTryStart();

    if (vim_chdir(new_dir))
    {
 Py_DECREF(ret);
 Py_DECREF(newwd);
 Py_XDECREF(todecref);

 if (VimTryEnd())
     return ((void*)0);

 PyErr_SET_VIM(N_("failed to change directory"));
 return ((void*)0);
    }

    Py_DECREF(newwd);
    Py_XDECREF(todecref);

    post_chdir(FALSE);

    if (VimTryEnd())
    {
 Py_DECREF(ret);
 return ((void*)0);
    }

    return ret;
}
