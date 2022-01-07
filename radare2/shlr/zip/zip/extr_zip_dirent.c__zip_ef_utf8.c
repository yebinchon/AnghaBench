
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zip_uint8_t ;
typedef scalar_t__ zip_uint32_t ;
typedef int zip_uint16_t ;
struct zip_string {int dummy; } ;
struct zip_extra_field {int dummy; } ;
struct zip_error {int dummy; } ;


 int ZIP_EF_BOTH ;
 int ZIP_ER_MEMORY ;
 int ZIP_FL_ENC_RAW ;
 scalar_t__ ZIP_UINT16_MAX ;
 struct zip_extra_field* _zip_ef_new (int ,int ,int *,int ) ;
 int _zip_error_set (struct zip_error*,int ,int ) ;
 int _zip_poke4 (int ,int **) ;
 int _zip_string_crc32 (struct zip_string*) ;
 int * _zip_string_get (struct zip_string*,scalar_t__*,int ,int *) ;
 int free (int *) ;
 scalar_t__ malloc (scalar_t__) ;
 int memcpy (int *,int const*,scalar_t__) ;

__attribute__((used)) static struct zip_extra_field *
_zip_ef_utf8(zip_uint16_t id, struct zip_string *str, struct zip_error *error)
{
    const zip_uint8_t *raw;
    zip_uint8_t *data, *p;
    zip_uint32_t len;
    struct zip_extra_field *ef;

    raw = _zip_string_get(str, &len, ZIP_FL_ENC_RAW, ((void*)0));

    if (len+5 > ZIP_UINT16_MAX) {

    }

    if ((data=(zip_uint8_t *)malloc(len+5)) == ((void*)0)) {
 _zip_error_set(error, ZIP_ER_MEMORY, 0);
 return ((void*)0);
    }

    p = data;
    *(p++) = 1;
    _zip_poke4(_zip_string_crc32(str), &p);
    memcpy(p, raw, len);
    p += len;

    ef = _zip_ef_new(id, (zip_uint16_t)(p-data), data, ZIP_EF_BOTH);
    free(data);
    return ef;
}
