
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shader_reg {int dummy; } ;
struct asm_parser {int dummy; } ;
typedef int DWORD ;


 int TRUE ;
 int asmparser_texhelper (struct asm_parser*,int ,int ,struct shader_reg const*,struct shader_reg*) ;
 struct shader_reg map_oldps_register (struct shader_reg const*,int ) ;

__attribute__((used)) static void asmparser_tex(struct asm_parser *This, DWORD mod, DWORD shift,
                          const struct shader_reg *dst) {
    struct shader_reg src;


    src = map_oldps_register(dst, TRUE);
    asmparser_texhelper(This, mod, shift, dst, &src);
}
