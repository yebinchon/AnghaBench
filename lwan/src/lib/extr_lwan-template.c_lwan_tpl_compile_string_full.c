
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lwan_var_descriptor {int dummy; } ;
struct lwan_tpl {int dummy; } ;
typedef enum lwan_tpl_flag { ____Placeholder_lwan_tpl_flag } lwan_tpl_flag ;


 struct lwan_tpl* calloc (int,int) ;
 int dump_program (struct lwan_tpl*) ;
 int lwan_tpl_free (struct lwan_tpl*) ;
 scalar_t__ parse_string (struct lwan_tpl*,char const*,struct lwan_var_descriptor const*,int) ;

struct lwan_tpl *
lwan_tpl_compile_string_full(const char *string,
                             const struct lwan_var_descriptor *descriptor,
                             enum lwan_tpl_flag flags)
{
    struct lwan_tpl *tpl;

    tpl = calloc(1, sizeof(*tpl));
    if (tpl) {
        if (parse_string(tpl, string, descriptor, flags)) {




            return tpl;
        }

        lwan_tpl_free(tpl);
    }

    return ((void*)0);
}
