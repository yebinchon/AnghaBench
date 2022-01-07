
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned
ip_header_checksum(const unsigned char *px, unsigned offset, unsigned max_offset)
{
    unsigned header_length = (px[offset]&0xF) * 4;
    unsigned xsum = 0;
    unsigned i;


    if (max_offset > offset + header_length)
        max_offset = offset + header_length;


    xsum = 0;
    for (i = offset; i < max_offset; i += 2) {
        xsum += px[i]<<8 | px[i+1];
    }


    xsum = (xsum & 0xFFFF) + (xsum >> 16);
    xsum = (xsum & 0xFFFF) + (xsum >> 16);
    xsum = (xsum & 0xFFFF) + (xsum >> 16);

    return xsum;
}
