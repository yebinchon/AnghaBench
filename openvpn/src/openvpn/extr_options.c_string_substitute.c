
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gc_arena {int dummy; } ;


 scalar_t__ gc_malloc (scalar_t__,int,struct gc_arena*) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static char *
string_substitute(const char *src, int from, int to, struct gc_arena *gc)
{
    char *ret = (char *) gc_malloc(strlen(src) + 1, 1, gc);
    char *dest = ret;
    char c;

    do
    {
        c = *src++;
        if (c == from)
        {
            c = to;
        }
        *dest++ = c;
    }
    while (c);
    return ret;
}
