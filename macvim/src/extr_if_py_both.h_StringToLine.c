
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Py_ssize_t ;
typedef int PyObject ;
typedef int PyInt ;


 int ENC_OPT ;
 int N_ (char*) ;
 int PyBytes_AsStringAndSize (int *,char**,int*) ;
 scalar_t__ PyBytes_Check (int *) ;
 int PyErr_FORMAT (int ,int ,int ) ;
 int PyErr_NoMemory () ;
 int PyErr_SET_VIM (int ) ;
 int PyExc_TypeError ;
 int * PyUnicode_AsEncodedString (int *,int ,int *) ;
 scalar_t__ PyUnicode_Check (int *) ;
 int Py_DECREF (int *) ;
 int Py_TYPE_NAME (int *) ;
 int Py_XDECREF (int *) ;
 scalar_t__ alloc (unsigned int) ;
 char* memchr (char*,char,int) ;

__attribute__((used)) static char *
StringToLine(PyObject *obj)
{
    char *str;
    char *save;
    PyObject *bytes = ((void*)0);
    Py_ssize_t len = 0;
    PyInt i;
    char *p;

    if (PyBytes_Check(obj))
    {
 if (PyBytes_AsStringAndSize(obj, &str, &len) == -1
  || str == ((void*)0))
     return ((void*)0);
    }
    else if (PyUnicode_Check(obj))
    {
 if (!(bytes = PyUnicode_AsEncodedString(obj, ENC_OPT, ((void*)0))))
     return ((void*)0);

 if (PyBytes_AsStringAndSize(bytes, &str, &len) == -1
  || str == ((void*)0))
 {
     Py_DECREF(bytes);
     return ((void*)0);
 }
    }
    else
    {

 PyErr_FORMAT(PyExc_TypeError,
  N_("expected str() or unicode() instance, but got %s"),
  Py_TYPE_NAME(obj));





 return ((void*)0);
    }







    p = memchr(str, '\n', len);
    if (p != ((void*)0))
    {
 if (p == str + len - 1)
     --len;
 else
 {
     PyErr_SET_VIM(N_("string cannot contain newlines"));
     Py_XDECREF(bytes);
     return ((void*)0);
 }
    }




    save = (char *)alloc((unsigned)(len+1));
    if (save == ((void*)0))
    {
 PyErr_NoMemory();
 Py_XDECREF(bytes);
 return ((void*)0);
    }

    for (i = 0; i < len; ++i)
    {
 if (str[i] == '\0')
     save[i] = '\n';
 else
     save[i] = str[i];
    }

    save[i] = '\0';
    Py_XDECREF(bytes);

    return save;
}
