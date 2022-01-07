
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gl_shader_parser {int type; char* input_prefix; char* output_prefix; int attribs; int texture_samplers; int gl_string; int parser; } ;
typedef enum gs_shader_type { ____Placeholder_gs_shader_type } gs_shader_type ;


 int GS_SHADER_PIXEL ;
 int GS_SHADER_VERTEX ;
 int da_init (int ) ;
 int dstr_init (int *) ;
 int shader_parser_init (int *) ;

__attribute__((used)) static inline void gl_shader_parser_init(struct gl_shader_parser *glsp,
      enum gs_shader_type type)
{
 glsp->type = type;

 if (type == GS_SHADER_VERTEX) {
  glsp->input_prefix = "_input_attrib";
  glsp->output_prefix = "_vertex_shader_attrib";
 } else if (type == GS_SHADER_PIXEL) {
  glsp->input_prefix = "_vertex_shader_attrib";
  glsp->output_prefix = "_pixel_shader_attrib";
 }

 shader_parser_init(&glsp->parser);
 dstr_init(&glsp->gl_string);
 da_init(glsp->texture_samplers);
 da_init(glsp->attribs);
}
