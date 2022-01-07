
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gc_arena {int dummy; } ;
struct buffer {int dummy; } ;


 int OPTION_PARM_SIZE ;
 int buf_parse (struct buffer*,char,char*,int ) ;
 int gc_free (struct gc_arena*) ;
 char* gc_malloc (int ,int,struct gc_arena*) ;
 struct gc_arena gc_new () ;
 char* string_alloc (char*,struct gc_arena*) ;
 struct buffer string_alloc_buf (char const*,struct gc_arena*) ;

__attribute__((used)) static const char *
options_warning_extract_parm1(const char *option_string,
                              struct gc_arena *gc_ret)
{
    struct gc_arena gc = gc_new();
    struct buffer b = string_alloc_buf(option_string, &gc);
    char *p = gc_malloc(OPTION_PARM_SIZE, 0, &gc);
    const char *ret;

    buf_parse(&b, ' ', p, OPTION_PARM_SIZE);
    ret = string_alloc(p, gc_ret);
    gc_free(&gc);
    return ret;
}
