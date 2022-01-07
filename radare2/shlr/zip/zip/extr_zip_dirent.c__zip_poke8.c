
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zip_uint8_t ;
typedef int zip_uint64_t ;



void
_zip_poke8(zip_uint64_t i, zip_uint8_t **p)
{
    *((*p)++) = i&0xff;
    *((*p)++) = (i>>8)&0xff;
    *((*p)++) = (i>>16)&0xff;
    *((*p)++) = (i>>24)&0xff;
    *((*p)++) = (i>>32)&0xff;
    *((*p)++) = (i>>40)&0xff;
    *((*p)++) = (i>>48)&0xff;
    *((*p)++) = (i>>56)&0xff;
}
