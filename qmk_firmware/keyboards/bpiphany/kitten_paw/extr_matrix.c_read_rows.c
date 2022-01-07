
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int PINC ;
 int PIND ;

__attribute__((used)) static uint8_t read_rows(void) {
  return
    (PINC&(1<<7) ? 0 : (1<<0)) |
    (PIND&(1<<5) ? 0 : (1<<1)) |
    (PIND&(1<<3) ? 0 : (1<<2)) |
    (PIND&(1<<1) ? 0 : (1<<3)) |
    (PINC&(1<<2) ? 0 : (1<<4)) |
    (PIND&(1<<2) ? 0 : (1<<5)) |
    (PIND&(1<<4) ? 0 : (1<<6)) |
    (PIND&(1<<6) ? 0 : (1<<7));
}
