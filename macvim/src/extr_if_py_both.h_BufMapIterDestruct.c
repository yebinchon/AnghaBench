
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;


 int Py_DECREF (int *) ;

__attribute__((used)) static void
BufMapIterDestruct(PyObject *buffer)
{

    if (buffer)
    {
 Py_DECREF(buffer);
    }
}
