
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gs_shader {int dummy; } ;
struct TYPE_2__ {size_t num; struct gl_parser_attrib* array; } ;
struct gl_shader_parser {TYPE_1__ attribs; } ;
struct gl_parser_attrib {int dummy; } ;


 int gl_process_attrib (struct gs_shader*,struct gl_parser_attrib*) ;

__attribute__((used)) static inline bool gl_process_attribs(struct gs_shader *shader,
          struct gl_shader_parser *glsp)
{
 size_t i;
 for (i = 0; i < glsp->attribs.num; i++) {
  struct gl_parser_attrib *pa = glsp->attribs.array + i;
  if (!gl_process_attrib(shader, pa))
   return 0;
 }

 return 1;
}
