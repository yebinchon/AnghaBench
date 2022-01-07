
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t num; scalar_t__ array; } ;
struct gl_shader_parser {int parser; int gl_string; TYPE_1__ texture_samplers; TYPE_1__ attribs; } ;


 int da_free (TYPE_1__) ;
 int dstr_free (int *) ;
 int gl_parser_attrib_free (scalar_t__) ;
 int shader_parser_free (int *) ;

__attribute__((used)) static inline void gl_shader_parser_free(struct gl_shader_parser *glsp)
{
 size_t i;
 for (i = 0; i < glsp->attribs.num; i++)
  gl_parser_attrib_free(glsp->attribs.array + i);

 da_free(glsp->attribs);
 da_free(glsp->texture_samplers);
 dstr_free(&glsp->gl_string);
 shader_parser_free(&glsp->parser);
}
