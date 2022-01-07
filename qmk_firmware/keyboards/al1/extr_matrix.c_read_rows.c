
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int PB1 ;
 int PB2 ;
 int PB4 ;
 int PB5 ;
 int PC6 ;
 int PC7 ;
 int PINB ;
 int PINC ;

__attribute__((used)) static uint8_t read_rows(void) {
  return (PINC&(1<<PC7) ? 0 : (1<<0)) |
    (PINB&(1<<PB1) ? 0 : (1<<1)) |
    (PINB&(1<<PB2) ? 0 : (1<<2)) |
    (PINC&(1<<PC6) ? 0 : (1<<3)) |
    (PINB&(1<<PB4) ? 0 : (1<<4)) |
    (PINB&(1<<PB5) ? 0 : (1<<5));
}
