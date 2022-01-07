
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int M0110_INQUIRY ;
 int m0110_recv () ;
 int m0110_send (int ) ;

__attribute__((used)) static inline uint8_t inquiry(void) {
    m0110_send(M0110_INQUIRY);
    return m0110_recv();
}
