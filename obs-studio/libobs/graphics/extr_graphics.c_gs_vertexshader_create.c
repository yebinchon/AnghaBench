
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int gs_shader_t ;
struct TYPE_4__ {int * (* device_vertexshader_create ) (int ,char const*,char const*,char**) ;} ;
struct TYPE_5__ {int device; TYPE_1__ exports; } ;
typedef TYPE_2__ graphics_t ;


 int gs_valid_p (char*,char const*) ;
 int * stub1 (int ,char const*,char const*,char**) ;
 TYPE_2__* thread_graphics ;

gs_shader_t *gs_vertexshader_create(const char *shader, const char *file,
        char **error_string)
{
 graphics_t *graphics = thread_graphics;

 if (!gs_valid_p("gs_vertexshader_create", shader))
  return ((void*)0);

 return graphics->exports.device_vertexshader_create(
  graphics->device, shader, file, error_string);
}
