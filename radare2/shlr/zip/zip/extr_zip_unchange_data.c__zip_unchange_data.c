
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zip_entry {scalar_t__ deleted; TYPE_1__* changes; int * source; } ;
struct TYPE_2__ {int changed; scalar_t__ comp_method; } ;


 scalar_t__ ZIP_CM_REPLACED_DEFAULT ;
 int ZIP_DIRENT_COMP_METHOD ;
 int _zip_dirent_free (TYPE_1__*) ;
 int zip_source_free (int *) ;

void
_zip_unchange_data(struct zip_entry *ze)
{
    if (ze->source) {
 zip_source_free(ze->source);
 ze->source = ((void*)0);
    }

    if (ze->changes != ((void*)0) && (ze->changes->changed & ZIP_DIRENT_COMP_METHOD) && ze->changes->comp_method == ZIP_CM_REPLACED_DEFAULT) {
 ze->changes->changed &= ~ZIP_DIRENT_COMP_METHOD;
 if (ze->changes->changed == 0) {
     _zip_dirent_free(ze->changes);
     ze->changes = ((void*)0);
 }
    }

    ze->deleted = 0;
}
