
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zip_uint8_t ;
typedef int zip_uint16_t ;
typedef int zip_flags_t ;
struct zip_extra_field {int id; int size; int * data; int flags; int * next; } ;


 int free (struct zip_extra_field*) ;
 int * malloc (int) ;
 int memcpy (int *,int const*,int) ;

struct zip_extra_field *
_zip_ef_new(zip_uint16_t id, zip_uint16_t size, const zip_uint8_t *data, zip_flags_t flags)
{
    struct zip_extra_field *ef;

    if ((ef=(struct zip_extra_field *)malloc(sizeof(*ef))) == ((void*)0))
 return ((void*)0);

    ef->next = ((void*)0);
    ef->flags = flags;
 ef->data = ((void*)0);
    ef->id = id;
    ef->size = size;
    if (size > 0) {
 zip_uint8_t *p = malloc (size);
 if (p) {
  ef->data = p;
  memcpy (p, data, size);
 } else {
     free(ef);
     return ((void*)0);
 }
    }

    return ef;
}
