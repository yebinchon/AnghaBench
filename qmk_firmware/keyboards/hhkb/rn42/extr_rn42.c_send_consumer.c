
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int serial_send (int) ;
 int usage2bits (int) ;

__attribute__((used)) static void send_consumer(uint16_t data)
{
    uint16_t bits = usage2bits(data);
    serial_send(0xFD);
    serial_send(3);
    serial_send(3);
    serial_send(bits&0xFF);
    serial_send((bits>>8)&0xFF);
}
