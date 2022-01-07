
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int get_el () ;
 int move_to_user_mode (unsigned long,unsigned long,unsigned long) ;
 int printf (char*,...) ;
 int user_begin ;
 int user_end ;
 int user_process ;

void kernel_process(){
 printf("Kernel process started. EL %d\r\n", get_el());
 unsigned long begin = (unsigned long)&user_begin;
 unsigned long end = (unsigned long)&user_end;
 unsigned long process = (unsigned long)&user_process;
 int err = move_to_user_mode(begin, end - begin, process - begin);
 if (err < 0){
  printf("Error while moving process to user mode\n\r");
 }
}
