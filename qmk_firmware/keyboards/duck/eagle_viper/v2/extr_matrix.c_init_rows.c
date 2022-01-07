
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DDRD ;
 int DDRE ;
 int PORTD ;
 int PORTE ;

__attribute__((used)) static void init_rows(void) {
    DDRD &= ~0b00101111;
    PORTD &= ~0b00101111;

    DDRE &= ~0b00000100;
    PORTE |= 0b00000100;
}
