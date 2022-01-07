
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 int M0110_INSTANT ;
 scalar_t__ M0110_NULL ;
 int debug (char*) ;
 int debug_hex (scalar_t__) ;
 scalar_t__ m0110_recv () ;
 int m0110_send (int ) ;

__attribute__((used)) static inline uint8_t instant(void) {
    m0110_send(M0110_INSTANT);
    uint8_t data = m0110_recv();
    if (data != M0110_NULL) {
        debug_hex(data);
        debug(" ");
    }
    return data;
}
