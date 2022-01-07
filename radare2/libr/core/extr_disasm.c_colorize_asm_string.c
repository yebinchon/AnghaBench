
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_15__ {int addr; } ;
struct TYPE_14__ {int print; } ;
struct TYPE_11__ {int type; } ;
struct TYPE_13__ {char* opstr; int color_num; int color_reg; TYPE_2__* core; TYPE_1__ analop; int colorop; int show_color; int vat; scalar_t__ show_color_args; int at; int asmop; } ;
struct TYPE_12__ {int print; int anal; } ;
typedef TYPE_3__ RDisasmState ;
typedef TYPE_4__ RCore ;
typedef TYPE_5__ RAnalFunction ;


 int R_ANAL_FCN_TYPE_NULL ;
 int R_META_TYPE_HIGHLIGHT ;
 TYPE_5__* fcnIn (TYPE_3__*,int ,int ) ;
 int free (char*) ;
 scalar_t__ line_highlighted (TYPE_3__*) ;
 char* r_asm_op_get_asm (int *) ;
 int r_cons_strcat (int ) ;
 char* r_meta_get_string (int ,int ,int ) ;
 int r_print_color_op_type (int ,int ) ;
 char* r_print_colorize_opcode (int ,char*,int ,int ,int,int ) ;
 char* r_str_ndup (char*,int) ;
 char* r_str_newf (char*,char*,char*) ;
 char* strdup (char*) ;
 char* strstr (char*,char*) ;

__attribute__((used)) static char *colorize_asm_string(RCore *core, RDisasmState *ds, bool print_color) {
 char *source = ds->opstr? ds->opstr: r_asm_op_get_asm (&ds->asmop);
 char *hlstr = r_meta_get_string (ds->core->anal, R_META_TYPE_HIGHLIGHT, ds->at);
 bool partial_reset = line_highlighted (ds) ? 1 : ((hlstr && *hlstr) ? 1 : 0);
 free (hlstr);
 RAnalFunction *f = ds->show_color_args ? fcnIn (ds, ds->vat, R_ANAL_FCN_TYPE_NULL) : ((void*)0);

 if (!ds->show_color || !ds->colorop) {
  return strdup (source);
 }

 if (print_color) {
  r_cons_strcat (r_print_color_op_type (core->print, ds->analop.type));
 }

 char *spacer = strstr (source, "||");
 if (spacer) {
  char *scol1, *s1 = r_str_ndup (source, spacer - source);
  char *scol2, *s2 = strdup (spacer + 2);

  scol1 = r_print_colorize_opcode (ds->core->print, s1, ds->color_reg, ds->color_num, partial_reset, f ? f->addr : 0);
  free (s1);
  scol2 = r_print_colorize_opcode (ds->core->print, s2, ds->color_reg, ds->color_num, partial_reset, f ? f->addr : 0);
  free (s2);
  if (!scol1) {
   scol1 = strdup ("");
  }
  if (!scol2) {
   scol2 = strdup ("");
  }
  source = r_str_newf ("%s||%s", scol1, scol2);
  free (scol1);
  free (scol2);
  return source;
 }
 return r_print_colorize_opcode (ds->core->print, source, ds->color_reg, ds->color_num, partial_reset, f ? f->addr : 0);
}
