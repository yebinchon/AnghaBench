
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;
typedef int PyInt ;


 char* PyString_AsString (int *) ;
 int * PyString_FromStringAndSize (int *,int ) ;
 int strlen (char const*) ;

__attribute__((used)) static PyObject *
LineToString(const char *str)
{
    PyObject *result;
    PyInt len = strlen(str);
    char *p;





    result = PyString_FromStringAndSize(((void*)0), len);
    if (result == ((void*)0))
 return ((void*)0);

    p = PyString_AsString(result);

    while (*str)
    {
 if (*str == '\n')
     *p = '\0';
 else
     *p = *str;

 ++p;
 ++str;
    }

    return result;
}
