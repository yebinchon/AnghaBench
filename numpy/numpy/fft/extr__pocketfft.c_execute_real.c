
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;


 int * execute_real_backward (int *,double) ;
 int * execute_real_forward (int *,double) ;

__attribute__((used)) static PyObject *
execute_real(PyObject *a1, int is_forward, double fct)
{
    return is_forward ? execute_real_forward(a1, fct)
                      : execute_real_backward(a1, fct);
}
