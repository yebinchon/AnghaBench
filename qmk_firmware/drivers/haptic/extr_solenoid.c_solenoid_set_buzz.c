
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int haptic_set_buzz (int) ;

void solenoid_set_buzz(int buzz) { haptic_set_buzz(buzz); }
