
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zip_uint64_t ;
struct zip_error {int dummy; } ;
typedef int buf ;
typedef int FILE ;


 int BUFSIZE ;
 int ZIP_ER_EOF ;
 int ZIP_ER_READ ;
 int ZIP_ER_WRITE ;
 int _zip_error_set (struct zip_error*,int ,int ) ;
 int errno ;
 scalar_t__ ferror (int *) ;
 size_t fread (char*,int,size_t,int *) ;
 size_t fwrite (char*,int,size_t,int *) ;

__attribute__((used)) static int
copy_data(FILE *fs, zip_uint64_t len, FILE *ft, struct zip_error *error)
{
    char buf[BUFSIZE];
    size_t n, nn;

    if (len == 0)
 return 0;

    while (len > 0) {
 nn = len > sizeof(buf) ? sizeof(buf) : len;
 if ((n=fread(buf, 1, nn, fs)) == 0) {
            if (ferror(fs)) {
                _zip_error_set(error, ZIP_ER_READ, errno);
                return -1;
            }
            else {
                _zip_error_set(error, ZIP_ER_EOF, 0);
                return -1;
            }
        }

 if (fwrite(buf, 1, n, ft) != (size_t)n) {
     _zip_error_set(error, ZIP_ER_WRITE, errno);
     return -1;
 }

 len -= n;
    }

    return 0;
}
