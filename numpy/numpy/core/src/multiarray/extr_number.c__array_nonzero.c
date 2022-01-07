
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int npy_intp ;
struct TYPE_4__ {TYPE_1__* f; } ;
struct TYPE_3__ {int (* nonzero ) (int ,int *) ;} ;
typedef int PyArrayObject ;


 scalar_t__ DEPRECATE (char*) ;
 scalar_t__ Npy_EnterRecursiveCall (char*) ;
 int PyArray_DATA (int *) ;
 TYPE_2__* PyArray_DESCR (int *) ;
 int PyArray_SIZE (int *) ;
 scalar_t__ PyErr_Occurred () ;
 int PyErr_SetString (int ,char*) ;
 int PyExc_ValueError ;
 int Py_LeaveRecursiveCall () ;
 int stub1 (int ,int *) ;

__attribute__((used)) static int
_array_nonzero(PyArrayObject *mp)
{
    npy_intp n;

    n = PyArray_SIZE(mp);
    if (n == 1) {
        int res;
        if (Npy_EnterRecursiveCall(" while converting array to bool")) {
            return -1;
        }
        res = PyArray_DESCR(mp)->f->nonzero(PyArray_DATA(mp), mp);

        if (PyErr_Occurred()) {
            res = -1;
        }
        Py_LeaveRecursiveCall();
        return res;
    }
    else if (n == 0) {

        if (DEPRECATE("The truth value of an empty array is ambiguous. "
                      "Returning False, but in future this will result in an error. "
                      "Use `array.size > 0` to check that an array is not empty.") < 0) {
            return -1;
        }
        return 0;
    }
    else {
        PyErr_SetString(PyExc_ValueError,
                        "The truth value of an array "
                        "with more than one element is ambiguous. "
                        "Use a.any() or a.all()");
        return -1;
    }
}
