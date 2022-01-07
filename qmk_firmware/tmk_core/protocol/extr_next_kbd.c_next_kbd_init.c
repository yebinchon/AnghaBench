
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NEXT_KBD_IN_BIT ;
 int NEXT_KBD_IN_DDR ;
 int NEXT_KBD_IN_PORT ;
 int out_hi () ;
 int query_delay (int) ;
 int reset_delay (int) ;

void next_kbd_init(void) {
    out_hi();
    NEXT_KBD_IN_DDR &= ~(1 << NEXT_KBD_IN_BIT);
    NEXT_KBD_IN_PORT |= (1 << NEXT_KBD_IN_BIT);

    query_delay(5);
    reset_delay(8);

    query_delay(5);
    reset_delay(8);
}
