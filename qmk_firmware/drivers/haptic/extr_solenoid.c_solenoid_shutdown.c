
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SOLENOID_PIN ;
 int writePinLow (int ) ;

void solenoid_shutdown(void) { writePinLow(SOLENOID_PIN); }
