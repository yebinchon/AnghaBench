
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gc_arena {int dummy; } ;
struct buffer {int dummy; } ;


 int OPTION_PARM_SIZE ;
 scalar_t__ buf_parse (struct buffer*,int const,char*,int ) ;
 int gc_free (struct gc_arena*) ;
 char* gc_malloc (int ,int,struct gc_arena*) ;
 struct gc_arena gc_new () ;
 int options_warning_safe_scan2 (int const,int const,int const,char*,struct buffer const*,char const*,char const*) ;

__attribute__((used)) static void
options_warning_safe_scan1(const int msglevel,
                           const int delim,
                           const bool report_inconsistent,
                           const struct buffer *b1_src,
                           const struct buffer *b2_src,
                           const char *b1_name,
                           const char *b2_name)
{
    struct gc_arena gc = gc_new();
    struct buffer b = *b1_src;
    char *p = gc_malloc(OPTION_PARM_SIZE, 1, &gc);

    while (buf_parse(&b, delim, p, OPTION_PARM_SIZE))
    {
        options_warning_safe_scan2(msglevel, delim, report_inconsistent, p, b2_src, b1_name, b2_name);
    }

    gc_free(&gc);
}
