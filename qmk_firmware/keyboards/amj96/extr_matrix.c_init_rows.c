
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DDRB ;
 int PB1 ;
 int PB2 ;
 int PB3 ;

__attribute__((used)) static void init_rows(void)
{
     DDRB |= (1<<PB1 | 1<<PB2 | 1<<PB3);
}
