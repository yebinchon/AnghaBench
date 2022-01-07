
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EICRA ;
 int EIMSK ;
 int INT0 ;
 int ISC00 ;
 int ISC01 ;
 int _BV (int ) ;
 int serial_input () ;

void serial_slave_init(void) {
  serial_input();


  EIMSK |= _BV(INT0);

  EICRA &= ~(_BV(ISC00) | _BV(ISC01));
}
