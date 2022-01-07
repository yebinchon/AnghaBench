
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct options {char* foreign_option_index; } ;
struct gc_arena {int dummy; } ;
struct env_set {int dummy; } ;
struct buffer {int dummy; } ;


 int BSTR (struct buffer*) ;
 int M_WARN ;
 int OPTION_PARM_SIZE ;
 struct buffer alloc_buf_gc (int ,struct gc_arena*) ;
 int buf_printf (struct buffer*,char*,...) ;
 int gc_free (struct gc_arena*) ;
 struct gc_arena gc_new () ;
 int msg (int ,char*) ;
 int setenv_str (struct env_set*,int ,int ) ;

__attribute__((used)) static void
foreign_option(struct options *o, char *argv[], int len, struct env_set *es)
{
    if (len > 0)
    {
        struct gc_arena gc = gc_new();
        struct buffer name = alloc_buf_gc(OPTION_PARM_SIZE, &gc);
        struct buffer value = alloc_buf_gc(OPTION_PARM_SIZE, &gc);
        int i;
        bool first = 1;
        bool good = 1;

        good &= buf_printf(&name, "foreign_option_%d", o->foreign_option_index + 1);
        ++o->foreign_option_index;
        for (i = 0; i < len; ++i)
        {
            if (argv[i])
            {
                if (!first)
                {
                    good &= buf_printf(&value, " ");
                }
                good &= buf_printf(&value, "%s", argv[i]);
                first = 0;
            }
        }
        if (good)
        {
            setenv_str(es, BSTR(&name), BSTR(&value));
        }
        else
        {
            msg(M_WARN, "foreign_option: name/value overflow");
        }
        gc_free(&gc);
    }
}
