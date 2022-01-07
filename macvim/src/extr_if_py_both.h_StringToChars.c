
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int char_u ;
typedef int PyObject ;


 int ENC_OPT ;
 int N_ (char*) ;
 int PyBytes_AsStringAndSize (int *,char**,int *) ;
 scalar_t__ PyBytes_Check (int *) ;
 int PyErr_FORMAT (int ,int ,int ) ;
 int PyExc_TypeError ;
 int * PyUnicode_AsEncodedString (int *,int ,int *) ;
 scalar_t__ PyUnicode_Check (int *) ;
 int Py_DECREF (int *) ;
 int Py_TYPE_NAME (int *) ;

__attribute__((used)) static char_u *
StringToChars(PyObject *obj, PyObject **todecref)
{
    char_u *str;

    if (PyBytes_Check(obj))
    {

 if (PyBytes_AsStringAndSize(obj, (char **) &str, ((void*)0)) == -1
  || str == ((void*)0))
     return ((void*)0);

 *todecref = ((void*)0);
    }
    else if (PyUnicode_Check(obj))
    {
 PyObject *bytes;

 if (!(bytes = PyUnicode_AsEncodedString(obj, ENC_OPT, ((void*)0))))
     return ((void*)0);

 if(PyBytes_AsStringAndSize(bytes, (char **) &str, ((void*)0)) == -1
  || str == ((void*)0))
 {
     Py_DECREF(bytes);
     return ((void*)0);
 }

 *todecref = bytes;
    }
    else
    {

 PyErr_FORMAT(PyExc_TypeError,
  N_("expected str() or unicode() instance, but got %s"),
  Py_TYPE_NAME(obj));





 return ((void*)0);
    }

    return (char_u *) str;
}
