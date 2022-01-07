
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gc_arena {int dummy; } ;


 int INLINE_FILE_TAG ;
 char const** make_arg_array (char*,char*,struct gc_arena*) ;
 char const** make_arg_copy (char**,struct gc_arena*) ;
 char const** make_inline_array (char*,struct gc_arena*) ;
 int strcmp (char*,int ) ;
 int string_array_len (char const**) ;

const char **
make_extended_arg_array(char **p, struct gc_arena *gc)
{
    const int argc = string_array_len((const char **)p);
    if (!strcmp(p[0], INLINE_FILE_TAG) && argc == 2)
    {
        return make_inline_array(p[1], gc);
    }
    else if (argc == 0)
    {
        return make_arg_array(((void*)0), ((void*)0), gc);
    }
    else if (argc == 1)
    {
        return make_arg_array(p[0], ((void*)0), gc);
    }
    else if (argc == 2)
    {
        return make_arg_array(p[0], p[1], gc);
    }
    else
    {
        return make_arg_copy(p, gc);
    }
}
