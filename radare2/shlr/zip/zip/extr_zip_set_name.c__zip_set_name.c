
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zip_uint8_t ;
typedef scalar_t__ zip_uint64_t ;
typedef int zip_uint16_t ;
typedef scalar_t__ zip_int64_t ;
typedef int zip_flags_t ;
struct zip_string {int encoding; } ;
struct zip_entry {TYPE_1__* changes; TYPE_3__* orig; } ;
struct zip {scalar_t__ nentry; int error; struct zip_entry* entry; } ;
struct TYPE_5__ {int filename; } ;
struct TYPE_4__ {int changed; struct zip_string* filename; } ;


 int ZIP_DIRENT_FILENAME ;
 int ZIP_ENCODING_UNKNOWN ;
 scalar_t__ ZIP_ENCODING_UTF8_GUESSED ;
 int ZIP_ENCODING_UTF8_KNOWN ;
 int ZIP_ER_EXISTS ;
 int ZIP_ER_INVAL ;
 int ZIP_ER_MEMORY ;
 int ZIP_ER_RDONLY ;
 int ZIP_FL_ENCODING_ALL ;
 int ZIP_FL_ENC_GUESS ;
 scalar_t__ ZIP_IS_RDONLY (struct zip*) ;
 TYPE_1__* _zip_dirent_clone (TYPE_3__*) ;
 int _zip_dirent_free (TYPE_1__*) ;
 int _zip_error_set (int *,int ,int ) ;
 scalar_t__ _zip_guess_encoding (struct zip_string*,int ) ;
 scalar_t__ _zip_name_locate (struct zip*,char const*,int ,int *) ;
 int _zip_string_equal (int ,struct zip_string*) ;
 int _zip_string_free (struct zip_string*) ;
 struct zip_string* _zip_string_new (int const*,int ,int,int *) ;
 scalar_t__ strlen (char const*) ;

int
_zip_set_name(struct zip *za, zip_uint64_t idx, const char *name, zip_flags_t flags)
{
    struct zip_entry *e;
    struct zip_string *str;
    int changed;
    zip_int64_t i;

    if (idx >= za->nentry) {
 _zip_error_set(&za->error, ZIP_ER_INVAL, 0);
 return -1;
    }

    if (ZIP_IS_RDONLY(za)) {
 _zip_error_set(&za->error, ZIP_ER_RDONLY, 0);
 return -1;
    }

    if (name && strlen(name) > 0) {

 if ((str=_zip_string_new((const zip_uint8_t *)name, (zip_uint16_t)strlen(name), flags, &za->error)) == ((void*)0))
     return -1;
 if ((flags & ZIP_FL_ENCODING_ALL) == ZIP_FL_ENC_GUESS && _zip_guess_encoding(str, ZIP_ENCODING_UNKNOWN) == ZIP_ENCODING_UTF8_GUESSED)
     str->encoding = ZIP_ENCODING_UTF8_KNOWN;
    }
    else
 str = ((void*)0);


    if ((i=_zip_name_locate(za, name, 0, ((void*)0))) >= 0 && (zip_uint64_t)i != idx) {
 _zip_string_free(str);
 _zip_error_set(&za->error, ZIP_ER_EXISTS, 0);
 return -1;
    }


    if (i>=0 && (zip_uint64_t)i == idx) {
 _zip_string_free(str);
 return 0;
    }

    e = za->entry+idx;

    if (e->changes) {
 _zip_string_free(e->changes->filename);
 e->changes->filename = ((void*)0);
 e->changes->changed &= ~ZIP_DIRENT_FILENAME;
    }

    if (e->orig)
 changed = !_zip_string_equal(e->orig->filename, str);
    else
 changed = 1;

    if (changed) {
        if (e->changes == ((void*)0)) {
            if ((e->changes=_zip_dirent_clone(e->orig)) == ((void*)0)) {
                _zip_error_set(&za->error, ZIP_ER_MEMORY, 0);
  _zip_string_free(str);
                return -1;
            }
        }
        e->changes->filename = str;
        e->changes->changed |= ZIP_DIRENT_FILENAME;
    }
    else {
 _zip_string_free(str);
 if (e->changes && e->changes->changed == 0) {
     _zip_dirent_free(e->changes);
     e->changes = ((void*)0);
 }
    }

    return 0;
}
