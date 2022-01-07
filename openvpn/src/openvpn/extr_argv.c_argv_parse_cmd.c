
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gc_arena {int dummy; } ;
struct argv {int dummy; } ;


 int D_ARGV_PARSE_CMD ;
 int MAX_PARMS ;
 int argv_append (struct argv*,int ) ;
 int argv_extend (struct argv*,int) ;
 int argv_reset (struct argv*) ;
 int gc_free (struct gc_arena*) ;
 struct gc_arena gc_new () ;
 int parse_line (char const*,char**,int ,char*,int ,int ,struct gc_arena*) ;
 int string_alloc (char const*,int *) ;

void
argv_parse_cmd(struct argv *a, const char *s)
{
    int nparms;
    char *parms[MAX_PARMS + 1];
    struct gc_arena gc = gc_new();

    argv_reset(a);
    argv_extend(a, 1);

    nparms = parse_line(s, parms, MAX_PARMS, "SCRIPT-ARGV", 0, D_ARGV_PARSE_CMD, &gc);
    if (nparms)
    {
        int i;
        for (i = 0; i < nparms; ++i)
        {
            argv_append(a, string_alloc(parms[i], ((void*)0)));
        }
    }
    else
    {
        argv_append(a, string_alloc(s, ((void*)0)));
    }

    gc_free(&gc);
}
