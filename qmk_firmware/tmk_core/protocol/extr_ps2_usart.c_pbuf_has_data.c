
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int SREG ;
 int cli () ;
 scalar_t__ pbuf_head ;
 scalar_t__ pbuf_tail ;

__attribute__((used)) static inline bool pbuf_has_data(void) {
    uint8_t sreg = SREG;
    cli();
    bool has_data = (pbuf_head != pbuf_tail);
    SREG = sreg;
    return has_data;
}
