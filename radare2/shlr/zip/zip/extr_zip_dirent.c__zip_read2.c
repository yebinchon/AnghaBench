
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zip_uint8_t ;
typedef scalar_t__ zip_uint16_t ;



zip_uint16_t
_zip_read2(const zip_uint8_t **a)
{
    zip_uint16_t ret;

    ret = (zip_uint16_t)((*a)[0]+((*a)[1]<<8));
    *a += 2;

    return ret;
}
