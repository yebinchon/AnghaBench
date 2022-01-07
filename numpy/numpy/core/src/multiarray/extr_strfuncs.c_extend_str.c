
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Py_ssize_t ;


 char* PyArray_realloc (char*,int) ;

__attribute__((used)) static char *
extend_str(char **strp, Py_ssize_t n, Py_ssize_t *maxp)
{
    char *str = *strp;
    Py_ssize_t new_cap;

    if (n >= *maxp - 16) {
        new_cap = *maxp * 2;

        if (new_cap <= *maxp) {
            return ((void*)0);
        }
        str = PyArray_realloc(*strp, new_cap);
        if (str != ((void*)0)) {
            *strp = str;
            *maxp = new_cap;
        }
    }
    return str;
}
