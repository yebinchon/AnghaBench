
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long zip_uint32_t ;
struct zip_string {int length; int raw; } ;


 int Z_NULL ;
 scalar_t__ crc32 (long,int ,int ) ;

zip_uint32_t
_zip_string_crc32(const struct zip_string *s)
{
    zip_uint32_t crc;

    crc = (zip_uint32_t)crc32(0L, Z_NULL, 0);

    if (s != ((void*)0))
 crc = (zip_uint32_t)crc32(crc, s->raw, s->length);

    return crc;
}
