
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;


 int Py_CLEAR (int *) ;

__attribute__((used)) static int
BufMapIterClear(PyObject **buffer)
{
    if (*buffer)
 Py_CLEAR(*buffer);
    return 0;
}
