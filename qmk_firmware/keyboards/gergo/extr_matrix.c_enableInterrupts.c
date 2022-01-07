
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DDRB ;
 int DDRE ;
 int PCICR ;
 int PCIE0 ;
 int PCMSK0 ;
 int PORTB ;
 int PORTE ;
 int TRKBTN ;
 int TRKMASK ;
 int sei () ;

__attribute__((used)) static void enableInterrupts(void) {
    return;
}
