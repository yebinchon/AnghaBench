
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gs_shader {int dummy; } ;
typedef struct gs_shader gs_shader_t ;
typedef int gs_device_t ;


 int GS_SHADER_VERTEX ;
 int LOG_ERROR ;
 int blog (int ,char*) ;
 struct gs_shader* shader_create (int *,int ,char const*,char const*,char**) ;

gs_shader_t *device_vertexshader_create(gs_device_t *device, const char *shader,
     const char *file, char **error_string)
{
 struct gs_shader *ptr;
 ptr = shader_create(device, GS_SHADER_VERTEX, shader, file,
       error_string);
 if (!ptr)
  blog(LOG_ERROR, "device_vertexshader_create (GL) failed");
 return ptr;
}
