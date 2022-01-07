
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gc_arena {int dummy; } ;
struct buffer {int dummy; } ;


 scalar_t__ OPTION_PARM_SIZE ;
 struct buffer alloc_buf_gc (scalar_t__,struct gc_arena*) ;
 int buf_printf (struct buffer*,char*,char const*) ;
 int gc_free (struct gc_arena*) ;
 struct gc_arena gc_new () ;
 int options_warning_safe_scan1 (int const,char,int,struct buffer*,struct buffer*,char*,char*) ;

__attribute__((used)) static void
options_warning_safe_ml(const int msglevel, char *actual, const char *expected, size_t actual_n)
{
    struct gc_arena gc = gc_new();

    if (actual_n > 0)
    {
        struct buffer local = alloc_buf_gc(OPTION_PARM_SIZE + 16, &gc);
        struct buffer remote = alloc_buf_gc(OPTION_PARM_SIZE + 16, &gc);
        actual[actual_n - 1] = 0;

        buf_printf(&local, "version %s", expected);
        buf_printf(&remote, "version %s", actual);

        options_warning_safe_scan1(msglevel, ',', 1,
                                   &local, &remote,
                                   "local", "remote");

        options_warning_safe_scan1(msglevel, ',', 0,
                                   &remote, &local,
                                   "remote", "local");
    }

    gc_free(&gc);
}
