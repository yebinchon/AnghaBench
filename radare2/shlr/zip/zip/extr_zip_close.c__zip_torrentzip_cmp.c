
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zip_filelist {char* name; } ;


 int __strcasecmp (char const*,char const*) ;

__attribute__((used)) static int
_zip_torrentzip_cmp(const void *a, const void *b)
{
    const char *aname = ((const struct zip_filelist *)a)->name;
    const char *bname = ((const struct zip_filelist *)b)->name;

    if (aname == ((void*)0))
 return (bname != ((void*)0)) * -1;
    else if (bname == ((void*)0))
 return 1;

    return __strcasecmp(aname, bname);
}
