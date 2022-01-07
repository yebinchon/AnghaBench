
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DDRD ;
 int DDRE ;
 int PORTD ;
 int PORTE ;

__attribute__((used)) static void init_rows(void) {
    DDRD &= ~((1<<0)| (1<<1) | (1<<2) | (1<<3) | (1<<5));
    PORTD &= ~((1<<0)| (1<<1) | (1<<2) | (1<<3) | (1<<5));

    DDRE &= ~(1<<2);
    PORTE |= (1<<2);
}
