
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t zip_uint64_t ;
typedef int zip_flags_t ;
struct zip_error {int dummy; } ;
struct zip_dirent {int dummy; } ;
struct zip {size_t nentry; TYPE_1__* entry; struct zip_error error; } ;
struct TYPE_2__ {struct zip_dirent* changes; struct zip_dirent* orig; scalar_t__ deleted; } ;


 int ZIP_ER_DELETED ;
 int ZIP_ER_INVAL ;
 int ZIP_FL_UNCHANGED ;
 int _zip_error_set (struct zip_error*,int ,int ) ;

struct zip_dirent *
_zip_get_dirent(struct zip *za, zip_uint64_t idx, zip_flags_t flags, struct zip_error *error)
{
    if (error == ((void*)0))
 error = &za->error;

    if (idx >= za->nentry) {
 _zip_error_set(error, ZIP_ER_INVAL, 0);
 return ((void*)0);
    }

    if ((flags & ZIP_FL_UNCHANGED) || za->entry[idx].changes == ((void*)0)) {
 if (za->entry[idx].orig == ((void*)0)) {
     _zip_error_set(error, ZIP_ER_INVAL, 0);
     return ((void*)0);
 }
 if (za->entry[idx].deleted && (flags & ZIP_FL_UNCHANGED) == 0) {
     _zip_error_set(error, ZIP_ER_DELETED, 0);
     return ((void*)0);
 }
 return za->entry[idx].orig;
    }
    else
 return za->entry[idx].changes;
}
