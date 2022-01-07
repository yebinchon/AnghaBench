
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zip_flags_t ;
struct zip_extra_field {int flags; scalar_t__ id; scalar_t__ size; int data; struct zip_extra_field* next; } ;
typedef int FILE ;


 int ZIP_EF_BOTH ;
 int _zip_write2 (scalar_t__,int *) ;
 int fwrite (int ,scalar_t__,int,int *) ;

void
_zip_ef_write(const struct zip_extra_field *ef, zip_flags_t flags, FILE *f)
{
    for (; ef; ef=ef->next) {
 if (ef->flags & flags & ZIP_EF_BOTH) {
     _zip_write2(ef->id, f);
     _zip_write2(ef->size, f);
     if (ef->size > 0)
  fwrite(ef->data, ef->size, 1, f);
 }
    }
}
