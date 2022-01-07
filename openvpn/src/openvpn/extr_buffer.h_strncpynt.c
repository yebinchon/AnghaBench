
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strncpy (char*,char const*,size_t) ;

__attribute__((used)) static inline void
strncpynt(char *dest, const char *src, size_t maxlen)
{
    if (maxlen > 0)
    {
        strncpy(dest, src, maxlen-1);
        dest[maxlen - 1] = 0;
    }
}
