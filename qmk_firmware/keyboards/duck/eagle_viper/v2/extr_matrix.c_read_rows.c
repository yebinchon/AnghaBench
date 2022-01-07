
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 int PIND ;
 int PINE ;

__attribute__((used)) static uint8_t read_rows(uint8_t col) {

    return (PIND&(1<<0) ? (1<<0) : 0) |
            (PIND&(1<<1) ? (1<<1) : 0) |
            (PIND&(1<<2) ? (1<<2) : 0) |
            (PIND&(1<<3) ? (1<<3) : 0) |
            (PIND&(1<<5) ? (1<<4) : 0) |
            (col==0 ? ((PINE&(1<<2) ? 0 : (1<<2))) : 0);

}
