
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zip_source {int dummy; } ;
struct zip_error {int dummy; } ;


 int _zip_error_set (struct zip_error*,int,int) ;
 int zip_source_error (struct zip_source*,int*,int*) ;

void
_zip_error_set_from_source(struct zip_error *err, struct zip_source *src)
{
    int ze, se;

    zip_source_error(src, &ze, &se);
    _zip_error_set(err, ze, se);
}
