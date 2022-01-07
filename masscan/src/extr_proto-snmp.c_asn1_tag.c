
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;



__attribute__((used)) static unsigned
asn1_tag(const unsigned char *px, uint64_t length, uint64_t *r_offset)
{
    if (*r_offset >= length)
        return 0;
    return px[(*r_offset)++];
}
