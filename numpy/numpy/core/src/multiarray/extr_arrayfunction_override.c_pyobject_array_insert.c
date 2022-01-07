
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;



__attribute__((used)) static void
pyobject_array_insert(PyObject **array, int length, int index, PyObject *item)
{
    int j;

    for (j = length; j > index; j--) {
        array[j] = array[j - 1];
    }
    array[index] = item;
}
