
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gc_arena {int dummy; } ;
struct env_set {int dummy; } ;


 int ASSERT (struct env_set*) ;
 int M_INFO ;
 char* construct_name_value (char const*,char const*,struct gc_arena*) ;
 int env_set_add (struct env_set*,char const*) ;
 int env_set_del (struct env_set*,char const*) ;
 int gc_free (struct gc_arena*) ;
 struct gc_arena gc_new () ;
 int msg (int ,char*,char const*) ;
 char* string_mod_const (char const*,unsigned int const,unsigned int const,char const,struct gc_arena*) ;
 int strlen (char const*) ;

void
setenv_str_ex(struct env_set *es,
              const char *name,
              const char *value,
              const unsigned int name_include,
              const unsigned int name_exclude,
              const char name_replace,
              const unsigned int value_include,
              const unsigned int value_exclude,
              const char value_replace)
{
    struct gc_arena gc = gc_new();
    const char *name_tmp;
    const char *val_tmp = ((void*)0);

    ASSERT(name && strlen(name) > 1);

    name_tmp = string_mod_const(name, name_include, name_exclude, name_replace, &gc);

    if (value)
    {
        val_tmp = string_mod_const(value, value_include, value_exclude, value_replace, &gc);
    }

    ASSERT(es);

    if (val_tmp)
    {
        const char *str = construct_name_value(name_tmp, val_tmp, &gc);
        env_set_add(es, str);



    }
    else
    {
        env_set_del(es, name_tmp);
    }

    gc_free(&gc);
}
