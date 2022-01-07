
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 size_t PBUF_SIZE ;
 int SREG ;
 int cli () ;
 int * pbuf ;
 size_t pbuf_head ;
 size_t pbuf_tail ;

__attribute__((used)) static inline uint8_t pbuf_dequeue(void) {
    uint8_t val = 0;

    uint8_t sreg = SREG;
    cli();
    if (pbuf_head != pbuf_tail) {
        val = pbuf[pbuf_tail];
        pbuf_tail = (pbuf_tail + 1) % PBUF_SIZE;
    }
    SREG = sreg;

    return val;
}
