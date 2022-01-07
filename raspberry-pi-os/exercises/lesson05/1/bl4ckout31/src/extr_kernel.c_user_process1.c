
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int call_sys_write (char*) ;
 int delay (int) ;
 int get_daif () ;

void user_process1(char *array)
{
 char buf[2] = {0};
 if(array[0] == '1') {
  get_daif();
 }

 while (1){
  for (int i = 0; i < 5; i++){
   buf[0] = array[i];
   call_sys_write(buf);
   delay(100000);
  }
 }
}
