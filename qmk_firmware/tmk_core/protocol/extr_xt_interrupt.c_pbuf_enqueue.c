
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int PBUF_SIZE ;
 int SREG ;
 int cli () ;
 int dprintf (char*) ;
 int* pbuf ;
 int pbuf_head ;
 int pbuf_tail ;

__attribute__((used)) static inline void pbuf_enqueue(uint8_t data) {
    uint8_t sreg = SREG;
    cli();
    uint8_t next = (pbuf_head + 1) % PBUF_SIZE;
    if (next != pbuf_tail) {
        pbuf[pbuf_head] = data;
        pbuf_head = next;
    } else {
        dprintf("pbuf: full\n");
    }
    SREG = sreg;
}
