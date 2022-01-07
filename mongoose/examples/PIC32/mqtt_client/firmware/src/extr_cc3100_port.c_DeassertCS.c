
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CS_PIN ;
 int CS_PORT ;
 int PLIB_PORTS_PinSet (int ,int ,int ) ;
 int PORTS_ID_0 ;

void DeassertCS() {
  PLIB_PORTS_PinSet(PORTS_ID_0, CS_PORT, CS_PIN);
}
