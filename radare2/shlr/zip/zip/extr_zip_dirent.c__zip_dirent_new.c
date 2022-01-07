
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zip_dirent {int dummy; } ;


 int _zip_dirent_init (struct zip_dirent*) ;
 scalar_t__ malloc (int) ;

struct zip_dirent *
_zip_dirent_new(void)
{
    struct zip_dirent *de;

    if ((de=(struct zip_dirent *)malloc(sizeof(*de))) == ((void*)0))
 return ((void*)0);

    _zip_dirent_init(de);
    return de;
}
