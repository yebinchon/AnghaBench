
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atoi (int ) ;
 int getenv (char*) ;
 int hw_type ;

void init_tests(void){

  hw_type = atoi(getenv("HW_TYPE"));
}
