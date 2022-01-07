
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_8__ ;
typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int ut8 ;
typedef int ut64 ;
typedef int str ;
struct TYPE_22__ {int relsub; int relsub_addr; void* localvar_only; void* pseudo; } ;
struct TYPE_21__ {int flags; int big_endian; } ;
struct TYPE_20__ {int addr; } ;
struct TYPE_19__ {int size; int buf_asm; int member_0; } ;
struct TYPE_18__ {TYPE_3__* cons; TYPE_7__* print; int flags; TYPE_8__* parser; int anal; int assembler; int io; int config; } ;
struct TYPE_17__ {TYPE_2__* context; } ;
struct TYPE_15__ {int num; int reg; } ;
struct TYPE_16__ {TYPE_1__ pal; } ;
typedef TYPE_4__ RCore ;
typedef TYPE_5__ RAsmOp ;
typedef int RAnalHint ;
typedef TYPE_6__ RAnalFunction ;


 int R_PRINT_FLAGS_COLOR ;
 int free (char*) ;
 char* malloc (int) ;
 int r_anal_hint_free (int *) ;
 int * r_anal_hint_get (int ,int ) ;
 int r_asm_disassemble (int ,TYPE_5__*,int *,int const) ;
 int r_asm_op_set_asm (TYPE_5__*,char*) ;
 int r_asm_set_pc (int ,int ) ;
 void* r_config_get_i (int ,char*) ;
 int r_io_read_at (int ,int ,int *,int const) ;
 int r_parse_filter (TYPE_8__*,int ,int ,int *,char*,char*,int,int ) ;
 int r_parse_varsub (TYPE_8__*,TYPE_6__*,int ,int ,char*,char*,int) ;
 char* r_print_colorize_opcode (TYPE_7__*,char*,int ,int ,int,int ) ;
 char* r_str_new (char*) ;
 int r_strbuf_get (int *) ;
 int r_strbuf_length (int *) ;
 int strcpy (char*,int ) ;

__attribute__((used)) static char *get_buf_asm(RCore *core, ut64 from, ut64 addr, RAnalFunction *fcn, bool color) {
 int has_color = core->print->flags & R_PRINT_FLAGS_COLOR;
 char str[512];
 const int size = 12;
 ut8 buf[12];
 RAsmOp asmop = {0};
 char *buf_asm = ((void*)0);
 bool asm_varsub = r_config_get_i (core->config, "asm.var.sub");
 core->parser->pseudo = r_config_get_i (core->config, "asm.pseudo");
 core->parser->relsub = r_config_get_i (core->config, "asm.relsub");
 core->parser->localvar_only = r_config_get_i (core->config, "asm.var.subonly");

 if (core->parser->relsub) {
  core->parser->relsub_addr = from;
 }
 r_io_read_at (core->io, addr, buf, size);
 r_asm_set_pc (core->assembler, addr);
 r_asm_disassemble (core->assembler, &asmop, buf, size);
 int ba_len = r_strbuf_length (&asmop.buf_asm) + 128;
 char *ba = malloc (ba_len);
 strcpy (ba, r_strbuf_get (&asmop.buf_asm));
 if (asm_varsub) {
  r_parse_varsub (core->parser, fcn, addr, asmop.size,
    ba, ba, sizeof (asmop.buf_asm));
 }
 RAnalHint *hint = r_anal_hint_get (core->anal, addr);
 r_parse_filter (core->parser, addr, core->flags, hint,
   ba, str, sizeof (str), core->print->big_endian);
 r_anal_hint_free (hint);
 r_asm_op_set_asm (&asmop, ba);
 free (ba);
 if (color && has_color) {
  buf_asm = r_print_colorize_opcode (core->print, str,
    core->cons->context->pal.reg, core->cons->context->pal.num, 0, fcn ? fcn->addr : 0);
 } else {
  buf_asm = r_str_new (str);
 }
 return buf_asm;
}
