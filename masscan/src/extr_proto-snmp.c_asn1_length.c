
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint64_t ;



__attribute__((used)) static uint64_t
asn1_length(const unsigned char *px, uint64_t length, uint64_t *r_offset)
{
    uint64_t result;


    if ( (*r_offset >= length)
        || ((px[*r_offset] & 0x80)
        && ((*r_offset) + (px[*r_offset]&0x7F) >= length))) {
        *r_offset = length;
        return 0xFFFFffff;
    }


    result = px[(*r_offset)++];


    if (result & 0x80) {
        unsigned length_of_length = result & 0x7F;
        if (length_of_length == 0) {
            *r_offset = length;
            return 0xFFFFffff;
        }
        result = 0;
        while (length_of_length) {
            result = result * 256 + px[(*r_offset)++];
            if (result > 0x10000) {
                *r_offset = length;
                return 0xFFFFffff;
            }
            length_of_length--;
        }
    }
    return result;
}
