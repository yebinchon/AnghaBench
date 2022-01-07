
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zip_uint64_t ;
struct zip_error {int dummy; } ;
struct zip_entry {int dummy; } ;
struct zip_cdir {int nentry; int nentry_alloc; int * comment; scalar_t__ offset; scalar_t__ size; struct zip_entry* entry; } ;


 int SIZE_MAX ;
 int ZIP_ER_MEMORY ;
 int _zip_entry_init (struct zip_entry*) ;
 int _zip_error_set (struct zip_error*,int ,int ) ;
 int free (struct zip_cdir*) ;
 scalar_t__ malloc (int) ;

struct zip_cdir *
_zip_cdir_new(zip_uint64_t nentry, struct zip_error *error)
{
    struct zip_cdir *cd;
    zip_uint64_t i;

    if ((cd=(struct zip_cdir *)malloc(sizeof(*cd))) == ((void*)0)) {
 _zip_error_set(error, ZIP_ER_MEMORY, 0);
 return ((void*)0);
    }

    if (nentry == 0) {
 cd->entry = ((void*)0);
    } else if ((nentry > SIZE_MAX/sizeof(*(cd->entry))) || (cd->entry=(struct zip_entry *)malloc(sizeof(*(cd->entry))*(size_t)nentry)) == ((void*)0)) {
 _zip_error_set(error, ZIP_ER_MEMORY, 0);
 free(cd);
 return ((void*)0);
    }

    for (i=0; i<nentry; i++)
 _zip_entry_init(cd->entry+i);

    cd->nentry = cd->nentry_alloc = nentry;
    cd->size = cd->offset = 0;
    cd->comment = ((void*)0);

    return cd;
}
