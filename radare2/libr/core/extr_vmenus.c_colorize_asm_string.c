
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int ut64 ;
struct TYPE_15__ {int flags; } ;
struct TYPE_14__ {int addr; } ;
struct TYPE_13__ {TYPE_6__* print; int anal; TYPE_3__* cons; } ;
struct TYPE_12__ {TYPE_2__* context; } ;
struct TYPE_10__ {char* num; char* reg; } ;
struct TYPE_11__ {TYPE_1__ pal; } ;
typedef TYPE_4__ RCore ;
typedef TYPE_5__ RAnalFunction ;


 int R_ANAL_FCN_TYPE_NULL ;
 int R_PRINT_FLAGS_COLOR ;
 int free (char*) ;
 TYPE_5__* r_anal_get_fcn_in (int ,int ,int ) ;
 char* r_print_color_op_type (TYPE_6__*,int) ;
 char* r_print_colorize_opcode (TYPE_6__*,char*,char const*,char const*,int,int ) ;
 char* r_str_append (char*,char*) ;
 int r_str_get2 (char*) ;
 char* r_str_ndup (char*,int) ;
 char* r_str_newf (char*,int ,int ) ;
 char* strdup (char*) ;
 char* strstr (char*,char*) ;

__attribute__((used)) static char *colorize_asm_string(RCore *core, const char *buf_asm, int optype, ut64 addr) {
 char *tmp, *spacer = ((void*)0);
 char *source = (char*)buf_asm;
 bool use_color = core->print->flags & R_PRINT_FLAGS_COLOR;
 const char *color_num = core->cons->context->pal.num;
 const char *color_reg = core->cons->context->pal.reg;
 RAnalFunction* fcn = r_anal_get_fcn_in (core->anal, addr, R_ANAL_FCN_TYPE_NULL);

 if (!use_color) {
  return strdup (source);
 }

 spacer = strstr (source, "||");
 if (spacer) {
  char *s1 = r_str_ndup (source, spacer - source);
  char *s2 = strdup (spacer + 2);
  char *scol1 = r_print_colorize_opcode (core->print, s1, color_reg, color_num, 0, fcn ? fcn->addr : 0);
  char *scol2 = r_print_colorize_opcode (core->print, s2, color_reg, color_num, 0, fcn ? fcn->addr : 0);
  char *source = r_str_newf ("%s||%s", r_str_get2 (scol1), r_str_get2 (scol2));
  free (scol1);
  free (scol2);
  free (s1);
  free (s2);
  return source;
 }
 char *res = strdup ("");
 res = r_str_append (res, r_print_color_op_type (core->print, optype));
 tmp = r_print_colorize_opcode (core->print, source, color_reg, color_num, 0, fcn ? fcn->addr : 0);
 res = r_str_append (res, tmp);
 free (tmp);
 return res;
}
