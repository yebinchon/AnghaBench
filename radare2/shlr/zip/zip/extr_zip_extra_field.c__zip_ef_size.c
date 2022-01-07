
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ zip_uint16_t ;
typedef int zip_flags_t ;
struct zip_extra_field {int flags; scalar_t__ size; struct zip_extra_field* next; } ;


 int ZIP_EF_BOTH ;

zip_uint16_t
_zip_ef_size(const struct zip_extra_field *ef, zip_flags_t flags)
{
    zip_uint16_t size;

    size = 0;
    for (; ef; ef=ef->next) {
 if (ef->flags & flags & ZIP_EF_BOTH)
     size += 4+ef->size;
    }

    return size;
}
