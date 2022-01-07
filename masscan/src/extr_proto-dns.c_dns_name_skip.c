
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dns_name_skip_validate (unsigned char const*,unsigned int,unsigned int,unsigned int) ;

unsigned
dns_name_skip(const unsigned char px[], unsigned offset, unsigned max)
{
    unsigned name_length = 0;




    for (;;) {
        if (name_length >= 255)
            return max + 1;

        if (offset >= max)
            return max + 1;

        switch (px[offset]>>6) {
        case 0:

            if (px[offset] == 0) {
                return offset+1;
            } else {
                name_length += px[offset] + 1;
                offset += px[offset] + 1;
                continue;
            }
            break;
        case 3:

            return dns_name_skip_validate(px, offset, max, name_length);
        case 2:



            return max + 1;
        case 1:
            return max + 1;
        }
    }
}
