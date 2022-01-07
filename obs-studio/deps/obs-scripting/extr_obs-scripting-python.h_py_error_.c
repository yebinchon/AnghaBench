
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ PyErr_Occurred () ;
 int PyErr_Print () ;
 int warn (char*,char const*,int) ;

__attribute__((used)) static inline bool py_error_(const char *func, int line)
{
 if (PyErr_Occurred()) {
  warn("Python failure in %s:%d:", func, line);
  PyErr_Print();
  return 1;
 }
 return 0;
}
