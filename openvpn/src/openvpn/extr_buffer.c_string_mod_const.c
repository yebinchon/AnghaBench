
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gc_arena {int dummy; } ;


 char* string_alloc (char const*,struct gc_arena*) ;
 int string_mod (char*,unsigned int const,unsigned int const,char const) ;

const char *
string_mod_const(const char *str,
                 const unsigned int inclusive,
                 const unsigned int exclusive,
                 const char replace,
                 struct gc_arena *gc)
{
    if (str)
    {
        char *buf = string_alloc(str, gc);
        string_mod(buf, inclusive, exclusive, replace);
        return buf;
    }
    else
    {
        return ((void*)0);
    }
}
