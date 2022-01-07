
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zip_extra_field {struct zip_extra_field* data; struct zip_extra_field* next; } ;


 int free (struct zip_extra_field*) ;

void
_zip_ef_free(struct zip_extra_field *ef)
{
    struct zip_extra_field *ef2;

    while (ef) {
 ef2 = ef->next;
 free(ef->data);
 free(ef);
 ef = ef2;
    }
}
