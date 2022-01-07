
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int NEXT_KBD_READ ;
 int query () ;
 int response () ;
 int sei () ;

uint32_t next_kbd_recv(void) {



    if (!NEXT_KBD_READ) {
        sei();
        return 0;
    }

    query();
    uint32_t resp = response();

    return resp;
}
