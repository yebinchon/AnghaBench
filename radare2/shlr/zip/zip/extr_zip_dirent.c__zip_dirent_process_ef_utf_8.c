
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zip_uint8_t ;
typedef scalar_t__ zip_uint32_t ;
typedef int zip_uint16_t ;
struct zip_string {int dummy; } ;
struct zip_dirent {int extra_fields; } ;


 int ZIP_EF_BOTH ;
 int ZIP_ENCODING_UTF8_KNOWN ;
 int* _zip_ef_get_by_id (int ,int*,int,int ,int ,int *) ;
 scalar_t__ _zip_read4 (int const**) ;
 scalar_t__ _zip_string_crc32 (struct zip_string*) ;
 int _zip_string_free (struct zip_string*) ;
 struct zip_string* _zip_string_new (int const*,int,int ,int *) ;

__attribute__((used)) static struct zip_string *
_zip_dirent_process_ef_utf_8(const struct zip_dirent *de, zip_uint16_t id, struct zip_string *str)
{
    zip_uint16_t ef_len;
    zip_uint32_t ef_crc;

    const zip_uint8_t *ef = _zip_ef_get_by_id(de->extra_fields, &ef_len, id, 0, ZIP_EF_BOTH, ((void*)0));

    if (ef == ((void*)0) || ef_len < 5 || ef[0] != 1)
 return str;

    ef++;
    ef_crc = _zip_read4(&ef);

    if (_zip_string_crc32(str) == ef_crc) {
 struct zip_string *ef_str = _zip_string_new(ef, ef_len-5, ZIP_ENCODING_UTF8_KNOWN, ((void*)0));

 if (ef_str != ((void*)0)) {
     _zip_string_free(str);
     str = ef_str;
 }
    }

    return str;
}
