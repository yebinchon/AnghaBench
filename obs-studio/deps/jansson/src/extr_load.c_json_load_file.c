
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int json_t ;
typedef int json_error_t ;
typedef int FILE ;


 int errno ;
 int error_set (int *,int *,char*,...) ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int * json_loadf (int *,size_t,int *) ;
 int jsonp_error_init (int *,char const*) ;
 int strerror (int ) ;

json_t *json_load_file(const char *path, size_t flags, json_error_t *error)
{
    json_t *result;
    FILE *fp;

    jsonp_error_init(error, path);

    if (path == ((void*)0)) {
        error_set(error, ((void*)0), "wrong arguments");
        return ((void*)0);
    }

    fp = fopen(path, "rb");
    if(!fp)
    {
        error_set(error, ((void*)0), "unable to open %s: %s",
                  path, strerror(errno));
        return ((void*)0);
    }

    result = json_loadf(fp, flags, error);

    fclose(fp);
    return result;
}
