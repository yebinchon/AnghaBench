
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct TemplateSet {struct TemplatePacket* pkts; } ;
struct TemplatePacket {unsigned char* packet; unsigned int offset_tcp; } ;


 size_t Proto_TCP ;

unsigned
template_get_source_port(struct TemplateSet *tmplset)
{
    struct TemplatePacket *tmpl = &tmplset->pkts[Proto_TCP];
    const unsigned char *px = tmpl->packet;
    unsigned offset = tmpl->offset_tcp;

    return px[offset+0]<<8 | px[offset+1]<<0;
}
