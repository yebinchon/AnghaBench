
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int swizzle; } ;
struct shader_reg {TYPE_1__ u; } ;
struct asm_parser {int dummy; } ;
typedef int DWORD ;


 int BWRITERVS_W_Z ;
 int BWRITERVS_X_Y ;
 int BWRITERVS_Y_Z ;
 int BWRITERVS_Z_Z ;
 int FALSE ;
 int asmparser_texhelper (struct asm_parser*,int ,int ,struct shader_reg const*,struct shader_reg*) ;
 struct shader_reg map_oldps_register (struct shader_reg const*,int ) ;

__attribute__((used)) static void asmparser_texreg2gb(struct asm_parser *This, DWORD mod, DWORD shift,
                                const struct shader_reg *dst,
                                const struct shader_reg *src0) {
    struct shader_reg src;

    src = map_oldps_register(src0, FALSE);

    src.u.swizzle = BWRITERVS_X_Y | BWRITERVS_Y_Z | BWRITERVS_Z_Z | BWRITERVS_W_Z;
    asmparser_texhelper(This, mod, shift, dst, &src);
}
