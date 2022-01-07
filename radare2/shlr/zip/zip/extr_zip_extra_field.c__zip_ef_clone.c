
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zip_extra_field {struct zip_extra_field* next; int flags; int data; int size; int id; } ;
struct zip_error {int dummy; } ;


 int ZIP_ER_MEMORY ;
 int _zip_ef_free (struct zip_extra_field*) ;
 struct zip_extra_field* _zip_ef_new (int ,int ,int ,int ) ;
 int _zip_error_set (struct zip_error*,int ,int ) ;

struct zip_extra_field *
_zip_ef_clone(const struct zip_extra_field *ef, struct zip_error *error)
{
    struct zip_extra_field *head, *prev, *def;

    head = prev = ((void*)0);

    while (ef) {
        if ((def=_zip_ef_new(ef->id, ef->size, ef->data, ef->flags)) == ((void*)0)) {
            _zip_error_set(error, ZIP_ER_MEMORY, 0);
            _zip_ef_free(head);
            return ((void*)0);
        }

        if (head == ((void*)0))
            head = def;
        if (prev)
            prev->next = def;
        prev = def;

 ef = ef->next;
    }

    return head;
}
