
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* opstr; char* color_linehl; int asmop; } ;
typedef TYPE_1__ RDisasmState ;


 char* Color_RESET_BG ;
 scalar_t__ line_highlighted (TYPE_1__*) ;
 char* r_asm_op_get_asm (int *) ;
 char* r_str_highlight (char*,char*,char*,char const*) ;

__attribute__((used)) static void ds_highlight_word(RDisasmState * ds, char *word, char *color) {
 char *source = ds->opstr? ds->opstr: r_asm_op_get_asm (&ds->asmop);
 const char *color_reset = line_highlighted (ds) ? ds->color_linehl : Color_RESET_BG;
 char *asm_str = r_str_highlight (source, word, color, color_reset);
 ds->opstr = asm_str? asm_str: source;
}
