
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zip_uint8_t ;
typedef int zip_uint16_t ;
struct zip_string {int dummy; } ;
struct zip_error {int dummy; } ;
typedef int FILE ;


 int ZIP_FL_ENC_GUESS ;
 int * _zip_read_data (int const**,int *,int ,int,struct zip_error*) ;
 struct zip_string* _zip_string_new (int *,int ,int ,struct zip_error*) ;
 int free (int *) ;

__attribute__((used)) static struct zip_string *
_zip_read_string(const zip_uint8_t **buf, FILE *fp, zip_uint16_t len, int nulp, struct zip_error *error)
{
    zip_uint8_t *raw;
    struct zip_string *s;

    if ((raw=_zip_read_data(buf, fp, len, nulp, error)) == ((void*)0))
 return ((void*)0);

    s = _zip_string_new(raw, len, ZIP_FL_ENC_GUESS, error);
    free(raw);
    return s;
}
