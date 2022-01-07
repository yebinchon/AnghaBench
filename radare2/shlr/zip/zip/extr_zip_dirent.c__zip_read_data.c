
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char zip_uint8_t ;
struct zip_error {int dummy; } ;
typedef int FILE ;


 int ZIP_ER_INCONS ;
 int ZIP_ER_MEMORY ;
 int ZIP_ER_READ ;
 int _zip_error_set (struct zip_error*,int ,int ) ;
 int errno ;
 scalar_t__ ferror (int *) ;
 size_t fread (char*,int,size_t,int *) ;
 int free (char*) ;
 scalar_t__ malloc (size_t) ;
 int memcpy (char*,char const*,size_t) ;

zip_uint8_t *
_zip_read_data(const zip_uint8_t **buf, FILE *fp, size_t len, int nulp, struct zip_error *error)
{
    zip_uint8_t *r;

    if (len == 0 && nulp == 0)
 return ((void*)0);

    r = (zip_uint8_t *)malloc(nulp ? len+1 : len);
    if (!r) {
 _zip_error_set(error, ZIP_ER_MEMORY, 0);
 return ((void*)0);
    }

    if (buf) {
 memcpy(r, *buf, len);
 *buf += len;
    }
    else {
 if (fread(r, 1, len, fp)<len) {
     free(r);
            if (ferror(fp))
                _zip_error_set(error, ZIP_ER_READ, errno);
            else
                _zip_error_set(error, ZIP_ER_INCONS, 0);
     return ((void*)0);
 }
    }

    if (nulp) {
 zip_uint8_t *o;

 r[len] = 0;
 for (o=r; o<r+len; o++)
     if (*o == '\0')
  *o = ' ';
    }

    return r;
}
