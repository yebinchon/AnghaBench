
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t num; scalar_t__ array; } ;
struct ep_struct {int written; char* name; TYPE_1__ vars; } ;
struct dstr {int dummy; } ;


 int dstr_cat (struct dstr*,char*) ;
 int ep_write_var (struct dstr*,scalar_t__) ;

__attribute__((used)) static void ep_write_struct(struct dstr *shader, struct ep_struct *st)
{
 size_t i;

 if (st->written)
  return;

 dstr_cat(shader, "struct ");
 dstr_cat(shader, st->name);
 dstr_cat(shader, " {");

 for (i = 0; i < st->vars.num; i++) {
  dstr_cat(shader, "\n\t");
  ep_write_var(shader, st->vars.array + i);
  dstr_cat(shader, ";");
 }

 dstr_cat(shader, "\n};\n");
 st->written = 1;
}
