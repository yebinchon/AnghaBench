
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ zip_uint64_t ;
struct zip_cdir {scalar_t__ nentry; scalar_t__ entry; int comment; } ;


 int _zip_entry_finalize (scalar_t__) ;
 int _zip_string_free (int ) ;
 int free (struct zip_cdir*) ;

void
_zip_cdir_free(struct zip_cdir *cd)
{
    zip_uint64_t i;

    if (!cd)
 return;

    for (i=0; i<cd->nentry; i++)
 _zip_entry_finalize(cd->entry+i);
    free(cd->entry);
    _zip_string_free(cd->comment);
    free(cd);
}
