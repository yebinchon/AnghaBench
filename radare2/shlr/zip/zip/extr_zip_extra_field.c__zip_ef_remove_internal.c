
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zip_extra_field {struct zip_extra_field* next; int id; } ;


 scalar_t__ ZIP_EF_IS_INTERNAL (int ) ;
 int _zip_ef_free (struct zip_extra_field*) ;

struct zip_extra_field *
_zip_ef_remove_internal(struct zip_extra_field *ef)
{
    struct zip_extra_field *ef_head;
    struct zip_extra_field *prev, *next;

    ef_head = ef;
    prev = ((void*)0);

    while (ef) {
        if (ZIP_EF_IS_INTERNAL(ef->id)) {
            next = ef->next;
            if (ef_head == ef)
                ef_head = next;
            ef->next = ((void*)0);
            _zip_ef_free(ef);
            if (prev)
                prev->next = next;
            ef = next;
        }
        else {
            prev = ef;
            ef = ef->next;
        }
    }

    return ef_head;
}
