
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const*** builtin_files ;
 scalar_t__ strcmp (char const*,char const*) ;

__attribute__((used)) static const char *get_builtin_file(const char *name)
{
    for (int n = 0; builtin_files[n][0]; n++) {
        if (strcmp(builtin_files[n][0], name) == 0)
            return builtin_files[n][1];
    }
    return ((void*)0);
}
