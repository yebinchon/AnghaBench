
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct TemplatePacket {unsigned char* packet; int offset_app; int length; int payloads; } ;
typedef scalar_t__ (* SET_COOKIE ) (unsigned char*,unsigned int,unsigned int) ;


 int UNUSEDPARM (unsigned int) ;
 int memcpy (unsigned char*,unsigned char const*,unsigned int) ;
 int payloads_udp_lookup (int ,unsigned int,unsigned char const**,unsigned int*,unsigned int*,int *,scalar_t__ (*) (unsigned char*,unsigned int,unsigned int)) ;

__attribute__((used)) static void
udp_payload_fixup(struct TemplatePacket *tmpl, unsigned port, unsigned seqno)
{
    const unsigned char *px2 = 0;
    unsigned length2 = 0;
    unsigned source_port2 = 0x1000;
    uint64_t xsum2 = 0;
    unsigned char *px = tmpl->packet;
    SET_COOKIE set_cookie = 0;

    UNUSEDPARM(seqno);

    payloads_udp_lookup(tmpl->payloads,
                    port,
                    &px2,
                    &length2,
                    &source_port2,
                    &xsum2,
                    &set_cookie);

    memcpy( px+tmpl->offset_app,
            px2,
            length2);

    if (set_cookie)
        xsum2 += set_cookie(px+tmpl->offset_app,
                    length2,
                    seqno);

    tmpl->length = tmpl->offset_app + length2;
}
