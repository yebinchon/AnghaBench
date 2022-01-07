
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t num; struct gl_parser_attrib* array; } ;
struct gl_shader_parser {char* input_prefix; char* output_prefix; int gl_string; TYPE_1__ attribs; } ;
struct TYPE_4__ {int array; } ;
struct gl_parser_attrib {TYPE_2__ name; scalar_t__ input; } ;
struct dstr {int array; int member_0; } ;


 int dstr_move (TYPE_2__*,struct dstr*) ;
 int dstr_printf (struct dstr*,char*,char const*,unsigned int) ;
 int dstr_replace (int *,int ,int ) ;

__attribute__((used)) static void gl_rename_attributes(struct gl_shader_parser *glsp)
{
 size_t i = 0, input_idx = 0, output_idx = 0;

 for (i = 0; i < glsp->attribs.num; i++) {
  struct gl_parser_attrib *attrib = glsp->attribs.array + i;
  struct dstr new_name = {0};
  const char *prefix;
  size_t val;

  if (attrib->input) {
   prefix = glsp->input_prefix;
   val = input_idx++;
  } else {
   prefix = glsp->output_prefix;
   val = output_idx++;
  }

  dstr_printf(&new_name, "%s%u", prefix, (unsigned int)val);
  dstr_replace(&glsp->gl_string, attrib->name.array,
        new_name.array);
  dstr_move(&attrib->name, &new_name);
 }
}
