
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buffer ;


 int PATH_MAX ;
 char* getcwd (char*,int) ;
 char* strdup (char*) ;

char *get_current_dir_name(void)
{
    char buffer[PATH_MAX];
    char *ret;

    ret = getcwd(buffer, sizeof(buffer));
    return strdup(ret ? ret : "/");
}
