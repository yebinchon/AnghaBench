
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int JOTANCK_LED1 ;
 int JOTANCK_LED2 ;
 int setPinOutput (int ) ;

void keyboard_pre_init_user() {
  setPinOutput(JOTANCK_LED1);
  setPinOutput(JOTANCK_LED2);
}
