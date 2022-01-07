
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* context; } ;
struct TYPE_4__ {char* args; char* help; char* reset; } ;
struct TYPE_5__ {TYPE_1__ pal; scalar_t__ color_mode; } ;
typedef int RStrBuf ;
typedef TYPE_2__ RConsContext ;


 TYPE_3__* r_cons_singleton () ;
 int r_strbuf_appendf (int *,char*,char const*,char const*,char const*,char const*,char const*) ;

__attribute__((used)) static void r_core_vmenu_append_help (RStrBuf *p, const char **help) {
 int i;
 RConsContext *cons_ctx = r_cons_singleton ()->context;
 const char *pal_args_color = cons_ctx->color_mode ? cons_ctx->pal.args : "",
     *pal_help_color = cons_ctx->color_mode ? cons_ctx->pal.help : "",
     *pal_reset = cons_ctx->color_mode ? cons_ctx->pal.reset : "";

 for (i = 0; help[i]; i += 2) {
  r_strbuf_appendf (p, "%s%s %s%s%s",
    pal_args_color, help[i],
    pal_help_color, help[i + 1], pal_reset);
 }
}
