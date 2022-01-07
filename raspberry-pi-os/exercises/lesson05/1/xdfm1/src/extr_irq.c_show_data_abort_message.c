
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit_process () ;
 int printf (char*,...) ;

void show_data_abort_message(unsigned long esr, unsigned long address)
{
 printf("Data abort exception, ESR:%x, fault address: %x\r\n", esr, address);
 printf("terminating faulting process...\r\n");
 exit_process();
}
