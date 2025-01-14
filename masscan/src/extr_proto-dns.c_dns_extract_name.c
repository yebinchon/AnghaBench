
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct DomainPointer {char length; scalar_t__ name; } ;


 int memcpy (unsigned char*,unsigned char const*,unsigned int) ;

__attribute__((used)) static void
dns_extract_name(const unsigned char px[], unsigned offset, unsigned max,
                 struct DomainPointer *name)
{
    name->length = 0;

    for (;;) {
        unsigned len;

        if (offset >= max)
            return;

        len = px[offset];
        if (len & 0xC0) {
            if ((len & 0xC0) != 0xC0)
                return;
            else if (offset + 1 >= max)
                return;
            else {
                offset = (px[offset]&0x3F)<<8 | px[offset+1];
            }
        } else {
            if (len == 0) {
                return;
            } else {
                memcpy((unsigned char*)name->name+name->length, px+offset, len+1);
                name->length = (unsigned char)(name->length + len + 1);
                offset += len + 1;
            }
        }
    }
}
