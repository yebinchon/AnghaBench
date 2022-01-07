
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* heap_alloc (scalar_t__) ;
 int strcpy (char*,char const*) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static inline char *strdupA(const char *src)
{
    char *dest = heap_alloc(strlen(src) + 1);
    if (dest) strcpy(dest, src);
    return dest;
}
