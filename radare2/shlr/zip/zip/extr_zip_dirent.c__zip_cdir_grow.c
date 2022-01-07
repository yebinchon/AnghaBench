
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zip_uint64_t ;
struct zip_error {int dummy; } ;
struct zip_entry {int dummy; } ;
struct zip_cdir {int nentry_alloc; struct zip_entry* entry; } ;


 int ZIP_ER_INTERNAL ;
 int ZIP_ER_MEMORY ;
 int _zip_entry_init (struct zip_entry*) ;
 int _zip_error_set (struct zip_error*,int ,int ) ;
 scalar_t__ realloc (struct zip_entry*,int) ;

int
_zip_cdir_grow(struct zip_cdir *cd, zip_uint64_t nentry, struct zip_error *error)
{
    struct zip_entry *entry;
    zip_uint64_t i;

    if (nentry < cd->nentry_alloc) {
 _zip_error_set(error, ZIP_ER_INTERNAL, 0);
 return -1;
    }

    if (nentry == cd->nentry_alloc)
 return 0;

    if ((entry=((struct zip_entry *)
  realloc(cd->entry, sizeof(*(cd->entry))*nentry))) == ((void*)0)) {
 _zip_error_set(error, ZIP_ER_MEMORY, 0);
 return -1;
    }

    for (i=cd->nentry_alloc; i<nentry; i++)
 _zip_entry_init(entry+i);

    cd->nentry_alloc = nentry;
    cd->entry = entry;

    return 0;
}
