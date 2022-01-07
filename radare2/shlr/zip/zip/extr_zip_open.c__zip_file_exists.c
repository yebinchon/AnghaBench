
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;


 unsigned int ZIP_CREATE ;
 int ZIP_ER_EXISTS ;
 int ZIP_ER_INVAL ;
 int ZIP_ER_OPEN ;
 unsigned int ZIP_EXCL ;
 int set_error (int*,int *,int ) ;
 scalar_t__ stat (char const*,struct stat*) ;

__attribute__((used)) static int
_zip_file_exists(const char *fn, unsigned int flags, int *zep)
{
    struct stat st;

    if (fn == ((void*)0)) {
 set_error(zep, ((void*)0), ZIP_ER_INVAL);
 return -1;
    }

    if (stat(fn, &st) != 0) {
 if (flags & ZIP_CREATE)
     return 0;
 else {
     set_error(zep, ((void*)0), ZIP_ER_OPEN);
     return -1;
 }
    }
    else if ((flags & ZIP_EXCL)) {
 set_error(zep, ((void*)0), ZIP_ER_EXISTS);
 return -1;
    }



    return 1;
}
