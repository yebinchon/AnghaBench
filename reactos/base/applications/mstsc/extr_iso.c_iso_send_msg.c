
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int STREAM ;


 int out_uint16 (int ,int ) ;
 int out_uint16_be (int ,int) ;
 int out_uint8 (int ,int) ;
 int s_mark_end (int ) ;
 int tcp_init (int) ;
 int tcp_send (int ) ;

__attribute__((used)) static void
iso_send_msg(uint8 code)
{
 STREAM s;

 s = tcp_init(11);

 out_uint8(s, 3);
 out_uint8(s, 0);
 out_uint16_be(s, 11);

 out_uint8(s, 6);
 out_uint8(s, code);
 out_uint16(s, 0);
 out_uint16(s, 0);
 out_uint8(s, 0);

 s_mark_end(s);
 tcp_send(s);
}
