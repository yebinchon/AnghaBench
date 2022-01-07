
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gl_shader_parser {scalar_t__ type; int gl_string; } ;


 scalar_t__ GS_SHADER_VERTEX ;
 int dstr_cat (int *,char*) ;

__attribute__((used)) static void gl_write_interface_block(struct gl_shader_parser *glsp)
{
 if (glsp->type == GS_SHADER_VERTEX) {
  dstr_cat(&glsp->gl_string, "out gl_PerVertex {\n"
        "\tvec4 gl_Position;\n};\n\n");
 }
}
