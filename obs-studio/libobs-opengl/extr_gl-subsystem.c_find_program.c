
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gs_program {scalar_t__ vertex_shader; scalar_t__ pixel_shader; struct gs_program* next; } ;
struct gs_device {scalar_t__ cur_vertex_shader; scalar_t__ cur_pixel_shader; struct gs_program* first_program; } ;



__attribute__((used)) static inline struct gs_program *find_program(const struct gs_device *device)
{
 struct gs_program *program = device->first_program;

 while (program) {
  if (program->vertex_shader == device->cur_vertex_shader &&
      program->pixel_shader == device->cur_pixel_shader)
   return program;

  program = program->next;
 }

 return ((void*)0);
}
