
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NPY_ALLOW_C_API ;
 int NPY_ALLOW_C_API_DEF ;
 int NPY_DISABLE_C_API ;
 int PyErr_Clear () ;
 scalar_t__ PyErr_Occurred () ;
 double PyOS_string_to_double (char const*,char**,int *) ;

__attribute__((used)) static double
NumPyOS_ascii_strtod_plain(const char *s, char** endptr)
{
    double result;
    NPY_ALLOW_C_API_DEF;
    NPY_ALLOW_C_API;
    result = PyOS_string_to_double(s, endptr, ((void*)0));
    if (PyErr_Occurred()) {
        if (endptr) {
            *endptr = (char*)s;
        }
        PyErr_Clear();
    }
    NPY_DISABLE_C_API;
    return result;
}
