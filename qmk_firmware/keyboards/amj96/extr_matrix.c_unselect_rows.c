
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PB1 ;
 int PB2 ;
 int PB3 ;
 int PORTB ;

__attribute__((used)) static void unselect_rows(void)
{

    PORTB |= (1<<PB1);
    PORTB |= (1<<PB2);
    PORTB |= (1<<PB3);
}
