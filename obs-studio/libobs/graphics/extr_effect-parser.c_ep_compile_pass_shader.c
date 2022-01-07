
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct gs_effect_technique {int name; } ;
struct darray {int num; int array; } ;
struct TYPE_12__ {struct darray da; } ;
struct TYPE_10__ {struct darray da; } ;
struct gs_effect_pass {TYPE_6__ pixelshader_params; int * pixelshader; TYPE_4__ vertshader_params; int * vertshader; } ;
struct TYPE_11__ {int da; } ;
struct TYPE_9__ {int da; } ;
struct ep_pass {TYPE_5__ fragment_program; TYPE_3__ vertex_program; } ;
struct TYPE_7__ {int file; } ;
struct TYPE_8__ {TYPE_1__ lex; } ;
struct effect_parser {TYPE_2__ cfp; } ;
struct dstr {int array; } ;
typedef int gs_shader_t ;
typedef enum gs_shader_type { ____Placeholder_gs_shader_type } gs_shader_type ;


 int GS_SHADER_PIXEL ;
 int GS_SHADER_VERTEX ;
 int LOG_DEBUG ;
 size_t UINT_MAX ;
 int assert (int) ;
 int blog (int ,char*,...) ;
 int darray_free (struct darray*) ;
 int darray_init (struct darray*) ;
 int debug_print_string (char*,int ) ;
 int dstr_array_free (int ,int ) ;
 int dstr_cat (struct dstr*,char*) ;
 int dstr_catf (struct dstr*,char*,int ,unsigned int) ;
 int dstr_copy (struct dstr*,int ) ;
 int dstr_free (struct dstr*) ;
 int dstr_init (struct dstr*) ;
 int ep_compile_pass_shaderparams (struct effect_parser*,struct darray*,struct darray*,int *) ;
 int ep_makeshaderstring (struct effect_parser*,struct dstr*,int *,struct darray*) ;
 int * gs_pixelshader_create (int ,int ,int *) ;
 int * gs_vertexshader_create (int ,int ,int *) ;

__attribute__((used)) static inline bool ep_compile_pass_shader(struct effect_parser *ep,
       struct gs_effect_technique *tech,
       struct gs_effect_pass *pass,
       struct ep_pass *pass_in,
       size_t pass_idx,
       enum gs_shader_type type)
{
 struct dstr shader_str;
 struct dstr location;
 struct darray used_params;
 struct darray *pass_params = ((void*)0);
 gs_shader_t *shader = ((void*)0);
 bool success = 1;

 dstr_init(&shader_str);
 darray_init(&used_params);
 dstr_init(&location);

 dstr_copy(&location, ep->cfp.lex.file);
 if (type == GS_SHADER_VERTEX)
  dstr_cat(&location, " (Vertex ");
 else if (type == GS_SHADER_PIXEL)
  dstr_cat(&location, " (Pixel ");



 assert(pass_idx <= UINT_MAX);
 dstr_catf(&location, "shader, technique %s, pass %u)", tech->name,
    (unsigned)pass_idx);

 if (type == GS_SHADER_VERTEX) {
  ep_makeshaderstring(ep, &shader_str,
        &pass_in->vertex_program.da, &used_params);

  pass->vertshader = gs_vertexshader_create(shader_str.array,
         location.array, ((void*)0));

  shader = pass->vertshader;
  pass_params = &pass->vertshader_params.da;
 } else if (type == GS_SHADER_PIXEL) {
  ep_makeshaderstring(ep, &shader_str,
        &pass_in->fragment_program.da,
        &used_params);

  pass->pixelshader = gs_pixelshader_create(shader_str.array,
         location.array, ((void*)0));

  shader = pass->pixelshader;
  pass_params = &pass->pixelshader_params.da;
 }
 if (shader)
  success = ep_compile_pass_shaderparams(ep, pass_params,
             &used_params, shader);
 else
  success = 0;

 dstr_free(&location);
 dstr_array_free(used_params.array, used_params.num);
 darray_free(&used_params);
 dstr_free(&shader_str);

 return success;
}
