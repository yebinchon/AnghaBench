
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyMODINIT_FUNC ;


 int LoadfontMethods ;
 int Py_InitModule (char*,int ) ;

PyMODINIT_FUNC initloadfont(void) {
  Py_InitModule("loadfont", LoadfontMethods);
}
