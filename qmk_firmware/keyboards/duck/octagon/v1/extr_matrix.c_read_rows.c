
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int PINB ;
 int PIND ;
 int PINE ;

__attribute__((used)) static uint8_t read_rows(uint8_t col) {
  if (col == 14) {
    return PINE&(1<<2) ? 0 : (1<<0);
  } else {
      return (PIND&(1<<0) ? (1<<0) : 0) |
             (PIND&(1<<1) ? (1<<1) : 0) |
             (PIND&(1<<2) ? (1<<2) : 0) |
             (PIND&(1<<3) ? (1<<3) : 0) |
             (PIND&(1<<5) ? (1<<4) : 0) |
             (PINB&(1<<7) ? (1<<5) : 0);
    }
}
