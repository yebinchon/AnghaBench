
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zip_uint8_t ;
typedef int zip_uint32_t ;



zip_uint32_t
_zip_read4(const zip_uint8_t **a)
{
    zip_uint32_t ret;

    ret = ((((((zip_uint32_t)(*a)[3]<<8)+(*a)[2])<<8)+(*a)[1])<<8)+(*a)[0];
    *a += 4;

    return ret;
}
