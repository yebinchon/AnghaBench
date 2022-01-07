
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gd_error_method ;
 int gd_stderr_error ;

void gdClearErrorMethod(void)
{
 gd_error_method = gd_stderr_error;
}
