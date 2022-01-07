
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zip_error {int dummy; } ;


 scalar_t__ ZIP_ET_SYS ;
 int _zip_error_get (struct zip_error const*,int*,int*) ;
 int errno ;
 scalar_t__ zip_error_get_sys_type (int) ;

__attribute__((used)) static void
set_error(int *zep, const struct zip_error *err, int ze)
{
    int se;

    if (err) {
 _zip_error_get(err, &ze, &se);
 if (zip_error_get_sys_type(ze) == ZIP_ET_SYS)
     errno = se;
    }

    if (zep)
 *zep = ze;
}
