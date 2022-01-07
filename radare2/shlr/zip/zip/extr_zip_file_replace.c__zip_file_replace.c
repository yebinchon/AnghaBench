
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ zip_uint64_t ;
typedef int zip_int64_t ;
typedef int zip_flags_t ;
struct zip_source {int dummy; } ;
struct zip {scalar_t__ nentry; TYPE_1__* entry; int error; } ;
struct TYPE_5__ {int changed; int comp_method; } ;
struct TYPE_4__ {struct zip_source* source; TYPE_3__* changes; int * orig; } ;


 int ZIP_CM_REPLACED_DEFAULT ;
 int ZIP_DIRENT_COMP_METHOD ;
 int ZIP_ER_MEMORY ;
 int ZIP_ER_RDONLY ;
 int ZIP_FL_OVERWRITE ;
 scalar_t__ ZIP_IS_RDONLY (struct zip*) ;
 scalar_t__ ZIP_UINT64_MAX ;
 int _zip_add_entry (struct zip*) ;
 TYPE_3__* _zip_dirent_clone (int *) ;
 int _zip_entry_finalize (TYPE_1__*) ;
 int _zip_error_set (int *,int ,int ) ;
 int _zip_name_locate (struct zip*,char const*,int,int *) ;
 scalar_t__ _zip_set_name (struct zip*,scalar_t__,char const*,int) ;
 int _zip_unchange_data (TYPE_1__*) ;

zip_int64_t
_zip_file_replace(struct zip *za, zip_uint64_t idx, const char *name, struct zip_source *source, zip_flags_t flags)
{
    zip_uint64_t za_nentry_prev;

    if (ZIP_IS_RDONLY(za)) {
 _zip_error_set(&za->error, ZIP_ER_RDONLY, 0);
 return -1;
    }

    za_nentry_prev = za->nentry;
    if (idx == ZIP_UINT64_MAX) {
 zip_int64_t i = -1;

 if (flags & ZIP_FL_OVERWRITE)
     i = _zip_name_locate(za, name, flags, ((void*)0));

 if (i == -1) {

     if ((i=_zip_add_entry(za)) < 0)
  return -1;
 }
 idx = (zip_uint64_t)i;
    }

    if (name && _zip_set_name(za, idx, name, flags) != 0) {
 if (za->nentry != za_nentry_prev) {
     _zip_entry_finalize(za->entry+idx);
     za->nentry = za_nentry_prev;
 }
 return -1;
    }



    _zip_unchange_data(za->entry+idx);

    if (za->entry[idx].orig != ((void*)0) && (za->entry[idx].changes == ((void*)0) || (za->entry[idx].changes->changed & ZIP_DIRENT_COMP_METHOD) == 0)) {
        if (za->entry[idx].changes == ((void*)0)) {
            if ((za->entry[idx].changes=_zip_dirent_clone(za->entry[idx].orig)) == ((void*)0)) {
                _zip_error_set(&za->error, ZIP_ER_MEMORY, 0);
                return -1;
            }
        }

        za->entry[idx].changes->comp_method = ZIP_CM_REPLACED_DEFAULT;
        za->entry[idx].changes->changed |= ZIP_DIRENT_COMP_METHOD;
    }

    za->entry[idx].source = source;

    return (zip_int64_t)idx;
}
