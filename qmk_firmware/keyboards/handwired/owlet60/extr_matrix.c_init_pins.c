
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dat_pin ;
 int setPinInputHigh (int ) ;
 int unselect_rows () ;

__attribute__((used)) static void init_pins(void) {
  unselect_rows();





  setPinInputHigh(dat_pin);
}
