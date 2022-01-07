
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long uLong ;
typedef int uInt ;
struct zip_error {int dummy; } ;
typedef scalar_t__ off_t ;
typedef int FILE ;
typedef int Bytef ;


 int BUFSIZE ;
 int SEEK_SET ;
 int ZIP_ER_READ ;
 int ZIP_ER_SEEK ;
 int * Z_NULL ;
 int _zip_error_set (struct zip_error*,int ,int ) ;
 long crc32 (long,int *,int ) ;
 int errno ;
 size_t fread (int *,int,size_t,int *) ;
 scalar_t__ fseeko (int *,scalar_t__,int ) ;

int
_zip_filerange_crc(FILE *fp, off_t start, off_t len, uLong *crcp,
     struct zip_error *errp)
{
    Bytef buf[BUFSIZE];
    size_t n;

    *crcp = crc32(0L, Z_NULL, 0);

    if (fseeko(fp, start, SEEK_SET) != 0) {
 _zip_error_set(errp, ZIP_ER_SEEK, errno);
 return -1;
    }

    while (len > 0) {
 n = len > BUFSIZE ? BUFSIZE : (size_t)len;
 if ((n=fread(buf, 1, n, fp)) == 0) {
     _zip_error_set(errp, ZIP_ER_READ, errno);
     return -1;
 }

 *crcp = crc32(*crcp, buf, (uInt)n);

 len-= n;
    }

    return 0;
}
