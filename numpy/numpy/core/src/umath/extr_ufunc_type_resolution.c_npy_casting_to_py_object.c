
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;
typedef int NPY_CASTING ;







 int * PyInt_FromLong (int) ;
 int * PyUString_FromString (char*) ;

__attribute__((used)) static PyObject *
npy_casting_to_py_object(NPY_CASTING casting)
{
    switch (casting) {
        case 131:
            return PyUString_FromString("no");
        case 132:
            return PyUString_FromString("equiv");
        case 130:
            return PyUString_FromString("safe");
        case 129:
            return PyUString_FromString("same_kind");
        case 128:
            return PyUString_FromString("unsafe");
        default:
            return PyInt_FromLong(casting);
    }
}
