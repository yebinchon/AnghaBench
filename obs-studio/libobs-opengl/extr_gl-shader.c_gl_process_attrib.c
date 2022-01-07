
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct shader_attrib {int * name; int index; int type; int member_0; } ;
struct gs_shader {int attribs; } ;
struct TYPE_2__ {scalar_t__ capacity; scalar_t__ len; int * array; } ;
struct gl_parser_attrib {TYPE_1__ name; int mapping; int input; } ;


 int da_push_back (int ,struct shader_attrib*) ;
 int get_attrib_type (int ,int *,int *) ;

__attribute__((used)) static inline bool gl_process_attrib(struct gs_shader *program,
         struct gl_parser_attrib *pa)
{
 struct shader_attrib attrib = {0};


 if (!pa->input)
  return 1;

 get_attrib_type(pa->mapping, &attrib.type, &attrib.index);
 attrib.name = pa->name.array;

 pa->name.array = ((void*)0);
 pa->name.len = 0;
 pa->name.capacity = 0;

 da_push_back(program->attribs, &attrib);
 return 1;
}
