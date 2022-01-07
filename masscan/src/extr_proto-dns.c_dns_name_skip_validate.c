
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned
dns_name_skip_validate(const unsigned char *px, unsigned offset, unsigned length, unsigned name_length)
{
    unsigned ERROR = length + 1;
    unsigned result = offset + 2;
    unsigned recursion = 0;


    for (;;) {
        unsigned len;


        if (name_length >= 255)
            return ERROR;


        if (offset >= length)
            return ERROR;


        len = px[offset];




        if (len & 0xC0) {

            if ((len & 0xC0) != 0xC0)
                return ERROR;


            if (offset + 1 >= length)
                return ERROR;


            offset = (px[offset]&0x3F)<<8 | px[offset+1];


            if (++recursion > 4)
                return ERROR;
        } else {

            recursion = 0;



            if (len == 0) {
                return result;
            }



            name_length += len + 1;
            offset += len + 1;
        }
    }
}
