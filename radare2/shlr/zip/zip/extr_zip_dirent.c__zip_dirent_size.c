
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zip_uint16_t ;
typedef int zip_int32_t ;
struct zip_error {int dummy; } ;
typedef int FILE ;


 int CDENTRYSIZE ;
 int LENTRYSIZE ;
 int SEEK_CUR ;
 int ZIP_EF_LOCAL ;
 int ZIP_ER_READ ;
 int ZIP_ER_SEEK ;
 int _zip_error_set (struct zip_error*,int ,int ) ;
 scalar_t__ _zip_read2 (unsigned char const**) ;
 int errno ;
 int fread (unsigned char*,int,int,int *) ;
 scalar_t__ fseek (int *,int,int ) ;

zip_int32_t
_zip_dirent_size(FILE *f, zip_uint16_t flags, struct zip_error *error)
{
    zip_int32_t size;
    int local = (flags & ZIP_EF_LOCAL);
    int i;
    unsigned char b[6];
    const unsigned char *p;

    size = local ? LENTRYSIZE : CDENTRYSIZE;

    if (fseek(f, local ? 26 : 28, SEEK_CUR) < 0) {
 _zip_error_set(error, ZIP_ER_SEEK, errno);
 return -1;
    }

    if (fread(b, (local ? 4 : 6), 1, f) != 1) {
 _zip_error_set(error, ZIP_ER_READ, errno);
 return -1;
    }

    p = b;
    for (i=0; i<(local ? 2 : 3); i++) {
 size += _zip_read2(&p);
    }

    return size;
}
