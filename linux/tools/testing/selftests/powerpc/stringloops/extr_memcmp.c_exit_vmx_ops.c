
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int vmx_count ;

void exit_vmx_ops(void)
{
 vmx_count--;
}
