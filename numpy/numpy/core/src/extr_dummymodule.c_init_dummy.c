
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyMODINIT_FUNC ;


 int Py_InitModule (char*,int ) ;
 int methods ;

PyMODINIT_FUNC
init_dummy(void) {
    Py_InitModule("_dummy", methods);
}
