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
typedef  size_t uint64_t ;

/* Variables and functions */
 size_t FUNC0 (unsigned char*,size_t,size_t*) ; 
 size_t FUNC1 (unsigned char*,size_t,size_t*) ; 
 int FUNC2 (unsigned char*,size_t,size_t*) ; 

unsigned
FUNC3(unsigned char *px, size_t length, uint64_t seqno)
{
    uint64_t offset=0;
    uint64_t outer_length;
    uint64_t version;
    uint64_t tag;
    uint64_t len;


    /* tag */
    if (FUNC2(px, length, &offset) != 0x30)
        return 0;

    /* length */
    outer_length = FUNC1(px, length, &offset);
    if (length > outer_length + offset)
        length = (size_t)(outer_length + offset);

    /* Version */
    version = FUNC0(px, length, &offset);
    if (version != 0)
        return 0;

    /* Community */
    if (FUNC2(px, length, &offset) != 0x04)
        return 0;
    offset += FUNC1(px, length, &offset);

    /* PDU */
    tag = FUNC2(px, length, &offset);
    if (tag < 0xA0 || 0xA5 < tag)
        return 0;
    outer_length = FUNC1(px, length, &offset);
    if (length > outer_length + offset)
        length = (size_t)(outer_length + offset);

    /* Request ID */
    FUNC2(px, length, &offset);
    len = FUNC1(px, length, &offset);
    switch (len) {
    case 0:
        return 0;
    case 1:
        px[offset+0] = (unsigned char)(seqno>>0)&0x7F;
        return seqno & 0x7F;
    case 2:
        px[offset+0] = (unsigned char)(seqno>>8)&0x7F;
        px[offset+1] = (unsigned char)(seqno>>0);
        return seqno & 0x7fff;
    case 3:
        px[offset+0] = (unsigned char)(seqno>>16)&0x7F;
        px[offset+1] = (unsigned char)(seqno>>8);
        px[offset+2] = (unsigned char)(seqno>>0);
        return seqno & 0x7fffFF;
    case 4:
        px[offset+0] = (unsigned char)(seqno>>24)&0x7F;
        px[offset+1] = (unsigned char)(seqno>>16);
        px[offset+2] = (unsigned char)(seqno>>8);
        px[offset+3] = (unsigned char)(seqno>>0);
        return seqno & 0x7fffFFFF;
    case 5:
        px[offset+0] = 0;
        px[offset+1] = (unsigned char)(seqno>>24);
        px[offset+2] = (unsigned char)(seqno>>16);
        px[offset+3] = (unsigned char)(seqno>>8);
        px[offset+4] = (unsigned char)(seqno>>0);
        return seqno & 0xffffFFFF;
    }
    return 0;
}