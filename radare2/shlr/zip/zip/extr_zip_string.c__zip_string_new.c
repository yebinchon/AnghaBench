
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char zip_uint8_t ;
typedef int zip_uint16_t ;
typedef int zip_flags_t ;
struct zip_string {char* raw; int length; int encoding; scalar_t__ converted_length; int * converted; } ;
struct zip_error {int dummy; } ;
typedef enum zip_encoding_type { ____Placeholder_zip_encoding_type } zip_encoding_type ;


 int ZIP_ENCODING_CP437 ;
 scalar_t__ ZIP_ENCODING_ERROR ;
 int ZIP_ENCODING_UNKNOWN ;
 int ZIP_ENCODING_UTF8_KNOWN ;
 int ZIP_ER_INVAL ;
 int ZIP_ER_MEMORY ;
 int ZIP_FL_ENCODING_ALL ;



 int _zip_error_set (struct zip_error*,int ,int ) ;
 scalar_t__ _zip_guess_encoding (struct zip_string*,int) ;
 int _zip_string_free (struct zip_string*) ;
 int free (struct zip_string*) ;
 scalar_t__ malloc (int) ;
 int memcpy (char*,char const*,int) ;

struct zip_string *
_zip_string_new(const zip_uint8_t *raw, zip_uint16_t length, zip_flags_t flags, struct zip_error *error)
{
    struct zip_string *s;
    enum zip_encoding_type expected_encoding;

    if (length == 0)
 return ((void*)0);

    switch (flags & ZIP_FL_ENCODING_ALL) {
    case 129:
 expected_encoding = ZIP_ENCODING_UNKNOWN;
 break;
    case 128:
 expected_encoding = ZIP_ENCODING_UTF8_KNOWN;
 break;
    case 130:
 expected_encoding = ZIP_ENCODING_CP437;
 break;
    default:
 _zip_error_set(error, ZIP_ER_INVAL, 0);
 return ((void*)0);
    }

    if ((s=(struct zip_string *)malloc(sizeof(*s))) == ((void*)0)) {
 _zip_error_set(error, ZIP_ER_MEMORY, 0);
 return ((void*)0);
    }

    if ((s->raw=(zip_uint8_t *)malloc(length+1)) == ((void*)0)) {
 free(s);
 return ((void*)0);
    }

    memcpy(s->raw, raw, length);
    s->raw[length] = '\0';
    s->length = length;
    s->encoding = ZIP_ENCODING_UNKNOWN;
    s->converted = ((void*)0);
    s->converted_length = 0;

    if (expected_encoding != ZIP_ENCODING_UNKNOWN) {
 if (_zip_guess_encoding(s, expected_encoding) == ZIP_ENCODING_ERROR) {
     _zip_string_free(s);
     _zip_error_set(error, ZIP_ER_INVAL, 0);
     return ((void*)0);
 }
    }

    return s;
}
