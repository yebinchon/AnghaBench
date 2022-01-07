
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct python_obs_callback {int * func; int base; } ;


 int Py_XDECREF (int *) ;
 int remove_script_callback (int *) ;

__attribute__((used)) static inline void remove_python_obs_callback(struct python_obs_callback *cb)
{
 remove_script_callback(&cb->base);

 Py_XDECREF(cb->func);
 cb->func = ((void*)0);
}
