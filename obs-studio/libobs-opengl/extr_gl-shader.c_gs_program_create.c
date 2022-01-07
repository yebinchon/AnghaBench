
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct gs_program {TYPE_2__* vertex_shader; int obj; TYPE_1__* pixel_shader; struct gs_program* next; struct gs_program** prev_next; struct gs_device* device; } ;
struct gs_device {struct gs_program* first_program; TYPE_1__* cur_pixel_shader; TYPE_2__* cur_vertex_shader; } ;
struct TYPE_4__ {int obj; } ;
struct TYPE_3__ {int obj; } ;


 int GL_FALSE ;
 int GL_LINK_STATUS ;
 int assign_program_attribs (struct gs_program*) ;
 int assign_program_params (struct gs_program*) ;
 struct gs_program* bzalloc (int) ;
 int glAttachShader (int ,int ) ;
 int glCreateProgram () ;
 int glDetachShader (int ,int ) ;
 int glGetProgramiv (int ,int ,int*) ;
 int glLinkProgram (int ) ;
 int gl_success (char*) ;
 int gs_program_destroy (struct gs_program*) ;
 int print_link_errors (int ) ;

struct gs_program *gs_program_create(struct gs_device *device)
{
 struct gs_program *program = bzalloc(sizeof(*program));
 int linked = 0;

 program->device = device;
 program->vertex_shader = device->cur_vertex_shader;
 program->pixel_shader = device->cur_pixel_shader;

 program->obj = glCreateProgram();
 if (!gl_success("glCreateProgram"))
  goto error_detach_neither;

 glAttachShader(program->obj, program->vertex_shader->obj);
 if (!gl_success("glAttachShader (vertex)"))
  goto error_detach_neither;

 glAttachShader(program->obj, program->pixel_shader->obj);
 if (!gl_success("glAttachShader (pixel)"))
  goto error_detach_vertex;

 glLinkProgram(program->obj);
 if (!gl_success("glLinkProgram"))
  goto error;

 glGetProgramiv(program->obj, GL_LINK_STATUS, &linked);
 if (!gl_success("glGetProgramiv"))
  goto error;

 if (linked == GL_FALSE) {
  print_link_errors(program->obj);
  goto error;
 }

 if (!assign_program_attribs(program))
  goto error;
 if (!assign_program_params(program))
  goto error;

 glDetachShader(program->obj, program->vertex_shader->obj);
 gl_success("glDetachShader (vertex)");

 glDetachShader(program->obj, program->pixel_shader->obj);
 gl_success("glDetachShader (pixel)");

 program->next = device->first_program;
 program->prev_next = &device->first_program;
 device->first_program = program;
 if (program->next)
  program->next->prev_next = &program->next;

 return program;

error:
 glDetachShader(program->obj, program->pixel_shader->obj);
 gl_success("glDetachShader (pixel)");

error_detach_vertex:
 glDetachShader(program->obj, program->vertex_shader->obj);
 gl_success("glDetachShader (vertex)");

error_detach_neither:
 gs_program_destroy(program);
 return ((void*)0);
}
