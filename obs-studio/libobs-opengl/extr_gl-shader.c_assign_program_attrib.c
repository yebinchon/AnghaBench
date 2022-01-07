
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shader_attrib {int name; } ;
struct gs_program {int attribs; int obj; } ;
typedef int GLint ;


 int LOG_ERROR ;
 int blog (int ,char*,int ) ;
 int da_push_back (int ,int*) ;
 int glGetAttribLocation (int ,int ) ;
 int gl_success (char*) ;

__attribute__((used)) static bool assign_program_attrib(struct gs_program *program,
      struct shader_attrib *attrib)
{
 GLint attrib_obj = glGetAttribLocation(program->obj, attrib->name);
 if (!gl_success("glGetAttribLocation"))
  return 0;

 if (attrib_obj == -1) {
  blog(LOG_ERROR,
       "glGetAttribLocation: Could not find "
       "attribute '%s'",
       attrib->name);
  return 0;
 }

 da_push_back(program->attribs, &attrib_obj);
 return 1;
}
