
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zip_dirent {int cloned; scalar_t__ changed; } ;


 int _zip_dirent_init (struct zip_dirent*) ;
 scalar_t__ malloc (int) ;
 int memcpy (struct zip_dirent*,struct zip_dirent const*,int) ;

struct zip_dirent *
_zip_dirent_clone(const struct zip_dirent *sde)
{
    struct zip_dirent *tde;

    if ((tde=(struct zip_dirent *)malloc(sizeof(*tde))) == ((void*)0))
 return ((void*)0);

    if (sde)
 memcpy(tde, sde, sizeof(*sde));
    else
 _zip_dirent_init(tde);

    tde->changed = 0;
    tde->cloned = 1;

    return tde;
}
