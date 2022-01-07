
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ SIZE_T ;


 char* d3dcompiler_alloc (scalar_t__) ;
 int memcpy (char*,char const*,scalar_t__) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static inline char *d3dcompiler_strdup(const char *string)
{
    char *copy;
    SIZE_T len;

    if (!string)
        return ((void*)0);

    len = strlen(string);
    copy = d3dcompiler_alloc(len + 1);
    if (copy)
        memcpy(copy, string, len + 1);
    return copy;
}
