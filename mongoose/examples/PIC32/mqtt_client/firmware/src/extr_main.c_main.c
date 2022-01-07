
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int SYS_Initialize (int *) ;
 int SYS_Tasks () ;

int main(void) {

  SYS_Initialize(((void*)0));

  while (1) {

    SYS_Tasks();
  }



  return (EXIT_FAILURE);
}
