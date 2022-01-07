
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
struct dirent {int d_name; } ;
typedef int DIR ;


 int MP_TARRAY_APPEND (void*,char**,int,char*) ;
 scalar_t__ S_ISREG (int ) ;
 int closedir (int *) ;
 int compare_filename ;
 char* mp_path_join (void*,char*,int ) ;
 int * opendir (char*) ;
 int qsort (char**,int,int,int ) ;
 struct dirent* readdir (int *) ;
 int stat (char*,struct stat*) ;

__attribute__((used)) static char **list_script_files(void *talloc_ctx, char *path)
{
    char **files = ((void*)0);
    int count = 0;
    DIR *dp = opendir(path);
    if (!dp)
        return ((void*)0);
    struct dirent *ep;
    while ((ep = readdir(dp))) {
        char *fname = mp_path_join(talloc_ctx, path, ep->d_name);
        struct stat s;
        if (!stat(fname, &s) && S_ISREG(s.st_mode))
            MP_TARRAY_APPEND(talloc_ctx, files, count, fname);
    }
    closedir(dp);
    if (files)
        qsort(files, count, sizeof(char *), compare_filename);
    MP_TARRAY_APPEND(talloc_ctx, files, count, ((void*)0));
    return files;
}
