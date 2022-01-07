
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lwan_var_descriptor {int dummy; } ;
struct lwan_tpl {int dummy; } ;


 struct lwan_tpl* lwan_tpl_compile_string_full (char const*,struct lwan_var_descriptor const*,int ) ;

struct lwan_tpl *
lwan_tpl_compile_string(const char *string,
                        const struct lwan_var_descriptor *descriptor)
{
    return lwan_tpl_compile_string_full(string, descriptor, 0);
}
