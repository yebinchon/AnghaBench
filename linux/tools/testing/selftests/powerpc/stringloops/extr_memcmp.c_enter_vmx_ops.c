
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int vmx_count ;

int enter_vmx_ops(void)
{
 vmx_count++;
 return 1;
}
