
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ zip_uint64_t ;
typedef scalar_t__ zip_int64_t ;
struct zip {scalar_t__ nentry; TYPE_1__* entry; int error; } ;
struct TYPE_4__ {int changed; } ;
struct TYPE_3__ {TYPE_2__* changes; } ;


 int ZIP_DIRENT_FILENAME ;
 int ZIP_ER_EXISTS ;
 int ZIP_ER_INVAL ;
 int ZIP_FL_UNCHANGED ;
 int _zip_dirent_free (TYPE_2__*) ;
 int _zip_error_set (int *,int ,int ) ;
 int _zip_get_name (struct zip*,scalar_t__,int ,int *) ;
 scalar_t__ _zip_name_locate (struct zip*,int ,int ,int *) ;
 int _zip_unchange_data (TYPE_1__*) ;

int
_zip_unchange(struct zip *za, zip_uint64_t idx, int allow_duplicates)
{
    zip_int64_t i;

    if (idx >= za->nentry) {
 _zip_error_set(&za->error, ZIP_ER_INVAL, 0);
 return -1;
    }

    if (!allow_duplicates && za->entry[idx].changes && (za->entry[idx].changes->changed & ZIP_DIRENT_FILENAME)) {
 i = _zip_name_locate(za, _zip_get_name(za, idx, ZIP_FL_UNCHANGED, ((void*)0)), 0, ((void*)0));
 if (i >= 0 && (zip_uint64_t)i != idx) {
     _zip_error_set(&za->error, ZIP_ER_EXISTS, 0);
     return -1;
 }
    }

    _zip_dirent_free(za->entry[idx].changes);
    za->entry[idx].changes = ((void*)0);

    _zip_unchange_data(za->entry+idx);

    return 0;
}
