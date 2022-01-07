
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int send_packet (int *,int ) ;

void SLIP_send(uint8_t *pkt, uint32_t size) {
  send_packet(pkt, size);
}
