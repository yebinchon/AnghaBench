
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gs_shader {int type; int * device; } ;
struct gl_shader_parser {int dummy; } ;
typedef int gs_device_t ;
typedef enum gs_shader_type { ____Placeholder_gs_shader_type } gs_shader_type ;


 struct gs_shader* bzalloc (int) ;
 int gl_shader_init (struct gs_shader*,struct gl_shader_parser*,char const*,char**) ;
 int gl_shader_parse (struct gl_shader_parser*,char const*,char const*) ;
 int gl_shader_parser_free (struct gl_shader_parser*) ;
 int gl_shader_parser_init (struct gl_shader_parser*,int) ;
 int gs_shader_destroy (struct gs_shader*) ;

__attribute__((used)) static struct gs_shader *shader_create(gs_device_t *device,
           enum gs_shader_type type,
           const char *shader_str, const char *file,
           char **error_string)
{
 struct gs_shader *shader = bzalloc(sizeof(struct gs_shader));
 struct gl_shader_parser glsp;
 bool success = 1;

 shader->device = device;
 shader->type = type;

 gl_shader_parser_init(&glsp, type);
 if (!gl_shader_parse(&glsp, shader_str, file))
  success = 0;
 else
  success = gl_shader_init(shader, &glsp, file, error_string);

 if (!success) {
  gs_shader_destroy(shader);
  shader = ((void*)0);
 }

 gl_shader_parser_free(&glsp);
 return shader;
}
