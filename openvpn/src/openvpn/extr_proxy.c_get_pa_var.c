
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v ;
struct gc_arena {int dummy; } ;
typedef int k ;


 int get_key_value (char const*,char*,char*,int,int,char const**) ;
 scalar_t__ isspace (char const) ;
 int strcmp (char const*,char*) ;
 char* string_alloc (char*,struct gc_arena*) ;

__attribute__((used)) static char *
get_pa_var(const char *key, const char *pa, struct gc_arena *gc)
{
    char k[64];
    char v[256];
    const char *content = pa;

    while (1)
    {
        const int status = get_key_value(content, k, v, sizeof(k), sizeof(v), &content);
        if (status)
        {
            if (!strcmp(key, k))
            {
                return string_alloc(v, gc);
            }
        }
        else
        {
            return ((void*)0);
        }


        if (*content == ',')
        {
            ++content;
        }
        while (*content && isspace(*content))
        {
            ++content;
        }
    }
}
