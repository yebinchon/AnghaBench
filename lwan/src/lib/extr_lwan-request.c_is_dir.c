
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;


 int S_ISDIR (int) ;
 int S_ISVTX ;
 int lwan_status_warning (char*,char const*) ;
 scalar_t__ stat (char const*,struct stat*) ;

__attribute__((used)) static const char *is_dir(const char *v)
{
    struct stat st;

    if (!v)
        return ((void*)0);

    if (*v != '/')
        return ((void*)0);

    if (stat(v, &st) < 0)
        return ((void*)0);

    if (!S_ISDIR(st.st_mode))
        return ((void*)0);

    if (!(st.st_mode & S_ISVTX)) {
        lwan_status_warning(
            "Using %s as temporary directory, but it doesn't have "
            "the sticky bit set.",
            v);
    }

    return v;
}
