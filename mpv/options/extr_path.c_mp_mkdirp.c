
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mkdir (char*,int) ;
 char* strchr (char*,char) ;
 int talloc_free (char*) ;
 char* talloc_strdup (int *,char const*) ;

void mp_mkdirp(const char *dir)
{
    char *path = talloc_strdup(((void*)0), dir);
    char *cdir = path + 1;

    while (cdir) {
        cdir = strchr(cdir, '/');
        if (cdir)
            *cdir = 0;

        mkdir(path, 0700);

        if (cdir)
            *cdir++ = '/';
    }

    talloc_free(path);
}
