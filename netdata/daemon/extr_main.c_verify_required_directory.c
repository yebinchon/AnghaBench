
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DIR ;


 int chdir (char const*) ;
 int closedir (int *) ;
 int fatal (char*,char const*) ;
 int * opendir (char const*) ;

__attribute__((used)) static const char *verify_required_directory(const char *dir) {
    if(chdir(dir) == -1)
        fatal("Cannot cd to directory '%s'", dir);

    DIR *d = opendir(dir);
    if(!d)
        fatal("Cannot examine the contents of directory '%s'", dir);
    closedir(d);

    return dir;
}
