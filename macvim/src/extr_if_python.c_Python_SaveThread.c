
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PyEval_SaveThread () ;
 int saved_python_thread ;

__attribute__((used)) static void
Python_SaveThread(void)
{
    saved_python_thread = PyEval_SaveThread();
}
