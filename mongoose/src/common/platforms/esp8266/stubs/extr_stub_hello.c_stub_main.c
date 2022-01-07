
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _ResetVector () ;
 int hello ;
 int send_packet (int ,int) ;

void stub_main(void) {
  send_packet(hello, 5);
  _ResetVector();
}
