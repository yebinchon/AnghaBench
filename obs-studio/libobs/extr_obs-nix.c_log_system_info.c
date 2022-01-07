
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int log_distribution_info () ;
 int log_kernel_version () ;
 int log_memory_info () ;
 int log_processor_cores () ;
 int log_processor_info () ;
 int log_x_info () ;

void log_system_info(void)
{

 log_processor_info();

 log_processor_cores();
 log_memory_info();
 log_kernel_version();

 log_distribution_info();

 log_x_info();
}
