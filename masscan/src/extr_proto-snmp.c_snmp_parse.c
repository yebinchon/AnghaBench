
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct SNMP {scalar_t__ version; scalar_t__ community_length; unsigned char const* community; int pdu_tag; void* error_index; void* error_status; void* request_id; } ;
struct BannerOutput {int dummy; } ;


 void* asn1_integer (unsigned char const*,scalar_t__,scalar_t__*) ;
 scalar_t__ asn1_length (unsigned char const*,scalar_t__,scalar_t__*) ;
 int asn1_tag (unsigned char const*,scalar_t__,scalar_t__*) ;
 int memset (struct SNMP**,int ,int) ;
 int snmp_banner (unsigned char const*,size_t,scalar_t__,unsigned char const*,size_t,struct BannerOutput*) ;

__attribute__((used)) static void
snmp_parse(const unsigned char *px, uint64_t length,
    struct BannerOutput *banout,
    unsigned *request_id)
{
    uint64_t offset=0;
    uint64_t outer_length;
    struct SNMP snmp[1];

    memset(&snmp, 0, sizeof(*snmp));


    if (asn1_tag(px, length, &offset) != 0x30)
        return;


    outer_length = asn1_length(px, length, &offset);
    if (length > outer_length + offset)
        length = outer_length + offset;


    snmp->version = asn1_integer(px, length, &offset);
    if (snmp->version != 0)
        return;


    if (asn1_tag(px, length, &offset) != 0x04)
        return;
    snmp->community_length = asn1_length(px, length, &offset);
    snmp->community = px+offset;
    offset += snmp->community_length;


    snmp->pdu_tag = asn1_tag(px, length, &offset);
    if (snmp->pdu_tag < 0xA0 || 0xA5 < snmp->pdu_tag)
        return;
    outer_length = asn1_length(px, length, &offset);
    if (length > outer_length + offset)
        length = outer_length + offset;


    snmp->request_id = asn1_integer(px, length, &offset);
    *request_id = (unsigned)snmp->request_id;
    snmp->error_status = asn1_integer(px, length, &offset);
    snmp->error_index = asn1_integer(px, length, &offset);


    if (asn1_tag(px, length, &offset) != 0x30)
        return;
    outer_length = asn1_length(px, length, &offset);
    if (length > outer_length + offset)
        length = outer_length + offset;



    while (offset < length) {
        uint64_t varbind_length;
        uint64_t varbind_end;
        if (px[offset++] != 0x30) {
            break;
        }
        varbind_length = asn1_length(px, length, &offset);
        if (varbind_length == 0xFFFFffff)
            break;
        varbind_end = offset + varbind_length;
        if (varbind_end > length) {
            return;
        }


        if (asn1_tag(px,length,&offset) != 6)
            return;
        else {
            uint64_t oid_length = asn1_length(px, length, &offset);
            const unsigned char *oid = px+offset;
            uint64_t var_tag;
            uint64_t var_length;
            const unsigned char *var;

            offset += oid_length;
            if (offset > length)
                return;

            var_tag = asn1_tag(px,length,&offset);
            var_length = asn1_length(px, length, &offset);
            var = px+offset;

            offset += var_length;
            if (offset > length)
                return;

            if (var_tag == 5)
                continue;

            snmp_banner(oid, (size_t)oid_length, var_tag, var, (size_t)var_length, banout);
        }
    }
}
