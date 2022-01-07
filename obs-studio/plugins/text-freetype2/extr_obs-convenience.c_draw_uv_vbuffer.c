
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int gs_vertbuffer_t ;
typedef int gs_texture_t ;
typedef int gs_technique_t ;
typedef int gs_eparam_t ;
typedef int gs_effect_t ;


 int GS_TRIS ;
 int gs_draw (int ,int ,int ) ;
 int * gs_effect_get_param_by_name (int *,char*) ;
 int * gs_effect_get_technique (int *,char*) ;
 int gs_effect_set_texture (int *,int *) ;
 int gs_load_indexbuffer (int *) ;
 int gs_load_vertexbuffer (int *) ;
 size_t gs_technique_begin (int *) ;
 scalar_t__ gs_technique_begin_pass (int *,size_t) ;
 int gs_technique_end (int *) ;
 int gs_technique_end_pass (int *) ;
 int gs_vertexbuffer_flush (int *) ;

void draw_uv_vbuffer(gs_vertbuffer_t *vbuf, gs_texture_t *tex,
       gs_effect_t *effect, uint32_t num_verts)
{
 gs_texture_t *texture = tex;
 gs_technique_t *tech = gs_effect_get_technique(effect, "Draw");
 gs_eparam_t *image = gs_effect_get_param_by_name(effect, "image");
 size_t passes;

 if (vbuf == ((void*)0) || tex == ((void*)0))
  return;

 gs_vertexbuffer_flush(vbuf);
 gs_load_vertexbuffer(vbuf);
 gs_load_indexbuffer(((void*)0));

 passes = gs_technique_begin(tech);

 for (size_t i = 0; i < passes; i++) {
  if (gs_technique_begin_pass(tech, i)) {
   gs_effect_set_texture(image, texture);

   gs_draw(GS_TRIS, 0, num_verts);

   gs_technique_end_pass(tech);
  }
 }

 gs_technique_end(tech);
}
