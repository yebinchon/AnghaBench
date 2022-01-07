
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zip_extra_field {scalar_t__ id; scalar_t__ size; int flags; struct zip_extra_field* next; scalar_t__ data; } ;


 int ZIP_EF_BOTH ;
 int _zip_ef_free (struct zip_extra_field*) ;
 int memcmp (scalar_t__,scalar_t__,scalar_t__) ;

struct zip_extra_field *
_zip_ef_merge(struct zip_extra_field *to, struct zip_extra_field *from)
{
    struct zip_extra_field *ef2, *tt, *tail;
    int duplicate;

    if (to == ((void*)0))
 return from;

    for (tail=to; tail->next; tail=tail->next)
 ;

    for (; from; from=ef2) {
 ef2 = from->next;

 duplicate = 0;
 for (tt=to; tt; tt=tt->next) {
     if (tt->id == from->id && tt->size == from->size) {
  if (tt->data && from->data && !memcmp(tt->data, from->data, tt->size)) {
   tt->flags |= (from->flags & ZIP_EF_BOTH);
   duplicate = 1;
   break;
  }
     }
 }

 from->next = ((void*)0);
 if (duplicate)
     _zip_ef_free(from);
 else
     tail = tail->next = from;
    }

    return to;
}
