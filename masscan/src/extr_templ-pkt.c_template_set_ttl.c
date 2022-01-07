
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct TemplateSet {unsigned int count; struct TemplatePacket* pkts; } ;
struct TemplatePacket {unsigned char* packet; unsigned int offset_ip; int length; int checksum_ip; } ;


 int ip_header_checksum (unsigned char*,unsigned int,int ) ;

void
template_set_ttl(struct TemplateSet *tmplset, unsigned ttl)
{
    unsigned i;

    for (i=0; i<tmplset->count; i++) {
        struct TemplatePacket *tmpl = &tmplset->pkts[i];
        unsigned char *px = tmpl->packet;
        unsigned offset = tmpl->offset_ip;

        px[offset+8] = (unsigned char)(ttl);
        tmpl->checksum_ip = ip_header_checksum( tmpl->packet,
                                                    tmpl->offset_ip,
                                                    tmpl->length);
    }
}
