
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_execute_data ;


 int orig_interrupt_function (int *) ;
 int pcntl_signal_dispatch () ;

__attribute__((used)) static void pcntl_interrupt_function(zend_execute_data *execute_data)
{
 pcntl_signal_dispatch();
 if (orig_interrupt_function) {
  orig_interrupt_function(execute_data);
 }
}
