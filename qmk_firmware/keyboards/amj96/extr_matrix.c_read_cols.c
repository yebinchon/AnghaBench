
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int matrix_row_t ;


 int PB0 ;
 int PB6 ;
 int PB7 ;
 int PC7 ;
 int PD0 ;
 int PD1 ;
 int PD5 ;
 int PD6 ;
 int PD7 ;
 int PE6 ;
 int PF0 ;
 int PF1 ;
 int PF4 ;
 int PF5 ;
 int PF6 ;
 int PF7 ;
 int PINB ;
 int PINC ;
 int PIND ;
 int PINE ;
 int PINF ;
 int _BV (int ) ;

__attribute__((used)) static matrix_row_t read_cols(void)
{

    return (PINF&_BV(PF7) ? 0 : (1<<0)) |
           (PINF&_BV(PF6) ? 0 : (1<<1)) |
           (PINF&_BV(PF5) ? 0 : (1<<2)) |
           (PINF&_BV(PF4) ? 0 : (1<<3)) |
           (PINF&_BV(PF1) ? 0 : (1<<4)) |
           (PINF&_BV(PF0) ? 0 : (1<<5)) |
           (PINE&_BV(PE6) ? 0 : (1<<6)) |
           (PIND&_BV(PD7) ? 0 : (1<<7)) |
           (PIND&_BV(PD6) ? 0 : (1<<8)) |
           (PIND&_BV(PD5) ? 0 : (1<<9)) |
           (PIND&_BV(PD1) ? 0 : (1<<10)) |
           (PIND&_BV(PD0) ? 0 : (1<<11)) |
           (PINB&_BV(PB7) ? 0 : (1<<12)) |
           (PINB&_BV(PB6) ? 0 : (1<<13)) |
           (PINB&_BV(PB0) ? 0 : (1<<14)) |
           (PINC&_BV(PC7) ? 0 : (1<<15));
}
