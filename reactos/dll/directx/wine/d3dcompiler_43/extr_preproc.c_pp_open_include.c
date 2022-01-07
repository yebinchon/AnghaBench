
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (char*) ;
 char* wpp_lookup (char const*,int,char const*) ;
 void* wpp_open (char*,int) ;

void *pp_open_include(const char *name, int type, const char *parent_name, char **newpath)
{
    char *path;
    void *fp;

    if (!(path = wpp_lookup(name, type, parent_name))) return ((void*)0);
    fp = wpp_open(path, type);

    if (fp)
    {
        if (newpath) *newpath = path;
        else free( path );
        return fp;
    }
    free( path );
    return ((void*)0);
}
