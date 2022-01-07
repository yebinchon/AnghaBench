
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct TemplateSet {int dummy; } ;
struct Adapter {int dummy; } ;
typedef int px ;


 int rawsock_send_packet (struct Adapter*,unsigned char*,unsigned int,unsigned int) ;
 int template_set_target (struct TemplateSet*,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned char*,int,size_t*) ;

void
rawsock_send_probe(
    struct Adapter *adapter,
    unsigned ip_them, unsigned port_them,
    unsigned ip_me, unsigned port_me,
    unsigned seqno, unsigned flush,
    struct TemplateSet *tmplset)
{
    unsigned char px[2048];
    size_t packet_length;




    template_set_target(tmplset, ip_them, port_them, ip_me, port_me, seqno,
        px, sizeof(px), &packet_length);




    rawsock_send_packet(adapter, px, (unsigned)packet_length, flush);
}
