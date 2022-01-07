
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zip_dirent {int dummy; } ;


 int _zip_dirent_finalize (struct zip_dirent*) ;
 int free (struct zip_dirent*) ;

void
_zip_dirent_free(struct zip_dirent *zde)
{
    if (zde == ((void*)0))
 return;

    _zip_dirent_finalize(zde);
    free(zde);
}
