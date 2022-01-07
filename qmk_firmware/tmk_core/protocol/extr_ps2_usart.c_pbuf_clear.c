
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int SREG ;
 int cli () ;
 scalar_t__ pbuf_head ;
 scalar_t__ pbuf_tail ;

__attribute__((used)) static inline void pbuf_clear(void) {
    uint8_t sreg = SREG;
    cli();
    pbuf_head = pbuf_tail = 0;
    SREG = sreg;
}
