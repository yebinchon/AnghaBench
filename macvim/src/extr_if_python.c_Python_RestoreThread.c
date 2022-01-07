
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PyEval_RestoreThread (int *) ;
 int * saved_python_thread ;

__attribute__((used)) static void
Python_RestoreThread(void)
{
    PyEval_RestoreThread(saved_python_thread);
    saved_python_thread = ((void*)0);
}
