#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct SNMP {scalar_t__ version; scalar_t__ community_length; unsigned char const* community; int pdu_tag; void* error_index; void* error_status; void* request_id; } ;
struct BannerOutput {int dummy; } ;

/* Variables and functions */
 void* FUNC0 (unsigned char const*,scalar_t__,scalar_t__*) ; 
 scalar_t__ FUNC1 (unsigned char const*,scalar_t__,scalar_t__*) ; 
 int FUNC2 (unsigned char const*,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (struct SNMP**,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char const*,size_t,scalar_t__,unsigned char const*,size_t,struct BannerOutput*) ; 

__attribute__((used)) static void
FUNC5(const unsigned char *px, uint64_t length,
    struct BannerOutput *banout,
    unsigned *request_id)
{
    uint64_t offset=0;
    uint64_t outer_length;
    struct SNMP snmp[1];

    FUNC3(&snmp, 0, sizeof(*snmp));

    /* tag */
    if (FUNC2(px, length, &offset) != 0x30)
        return;

    /* length */
    outer_length = FUNC1(px, length, &offset);
    if (length > outer_length + offset)
        length = outer_length + offset;

    /* Version */
    snmp->version = FUNC0(px, length, &offset);
    if (snmp->version != 0)
        return;

    /* Community */
    if (FUNC2(px, length, &offset) != 0x04)
        return;
    snmp->community_length = FUNC1(px, length, &offset);
    snmp->community = px+offset;
    offset += snmp->community_length;

    /* PDU */
    snmp->pdu_tag = FUNC2(px, length, &offset);
    if (snmp->pdu_tag < 0xA0 || 0xA5 < snmp->pdu_tag)
        return;
    outer_length = FUNC1(px, length, &offset);
    if (length > outer_length + offset)
        length = outer_length + offset;

    /* Request ID */
    snmp->request_id = FUNC0(px, length, &offset);
    *request_id = (unsigned)snmp->request_id;
    snmp->error_status = FUNC0(px, length, &offset);
    snmp->error_index = FUNC0(px, length, &offset);

    /* Varbind List */
    if (FUNC2(px, length, &offset) != 0x30)
        return;
    outer_length = FUNC1(px, length, &offset);
    if (length > outer_length + offset)
        length = outer_length + offset;


    /* Var-bind list */
    while (offset < length) {
        uint64_t varbind_length;
        uint64_t varbind_end;
        if (px[offset++] != 0x30) {
            break;
        }
        varbind_length = FUNC1(px, length, &offset);
        if (varbind_length == 0xFFFFffff)
            break;
        varbind_end = offset + varbind_length;
        if (varbind_end > length) {
            return;
        }

        /* OID */
        if (FUNC2(px,length,&offset) != 6)
            return;
        else {
            uint64_t oid_length = FUNC1(px, length, &offset);
            const unsigned char *oid = px+offset;
            uint64_t var_tag;
            uint64_t var_length;
            const unsigned char *var;

            offset += oid_length;
            if (offset > length)
                return;

            var_tag = FUNC2(px,length,&offset);
            var_length = FUNC1(px, length, &offset);
            var = px+offset;

            offset += var_length;
            if (offset > length)
                return;

            if (var_tag == 5)
                continue; /* null */

            FUNC4(oid, (size_t)oid_length, var_tag, var, (size_t)var_length, banout);
        }
    }
}