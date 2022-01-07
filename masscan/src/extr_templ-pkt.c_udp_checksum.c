
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct TemplatePacket {scalar_t__ offset_tcp; scalar_t__ length; int offset_ip; int packet; } ;


 int udp_checksum2 (int ,int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static unsigned
udp_checksum(struct TemplatePacket *tmpl)
{
    return udp_checksum2(
                         tmpl->packet,
                         tmpl->offset_ip,
                         tmpl->offset_tcp,
                         tmpl->length - tmpl->offset_tcp);
}
