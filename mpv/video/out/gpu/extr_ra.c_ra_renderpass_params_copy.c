
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ra_renderpass_params {void* compute_shader; void* frag_shader; void* vertex_shader; int cached_program; int num_vertex_attribs; void* vertex_attribs; int num_inputs; void* inputs; } ;


 int bstrdup (struct ra_renderpass_params*,int ) ;
 void* dup_inputs (struct ra_renderpass_params*,void*,int ) ;
 struct ra_renderpass_params* res ;
 struct ra_renderpass_params* talloc_ptrtype (void*,int ) ;
 void* talloc_strdup (struct ra_renderpass_params*,void*) ;

struct ra_renderpass_params *ra_renderpass_params_copy(void *ta_parent,
        const struct ra_renderpass_params *params)
{
    struct ra_renderpass_params *res = talloc_ptrtype(ta_parent, res);
    *res = *params;
    res->inputs = dup_inputs(res, res->inputs, res->num_inputs);
    res->vertex_attribs =
        dup_inputs(res, res->vertex_attribs, res->num_vertex_attribs);
    res->cached_program = bstrdup(res, res->cached_program);
    res->vertex_shader = talloc_strdup(res, res->vertex_shader);
    res->frag_shader = talloc_strdup(res, res->frag_shader);
    res->compute_shader = talloc_strdup(res, res->compute_shader);
    return res;
}
