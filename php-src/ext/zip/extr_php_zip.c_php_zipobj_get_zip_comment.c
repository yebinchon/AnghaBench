
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zip {int dummy; } ;


 scalar_t__ zip_get_archive_comment (struct zip*,int*,int ) ;

__attribute__((used)) static char * php_zipobj_get_zip_comment(struct zip *za, int *len)
{
 if (za) {
  return (char *)zip_get_archive_comment(za, len, 0);
 }
 return ((void*)0);
}
