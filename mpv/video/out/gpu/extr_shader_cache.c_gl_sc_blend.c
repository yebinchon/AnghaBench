
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int enable_blend; int blend_src_rgb; int blend_dst_rgb; int blend_src_alpha; int blend_dst_alpha; } ;
struct gl_shader_cache {TYPE_1__ params; } ;
typedef enum ra_blend { ____Placeholder_ra_blend } ra_blend ;



void gl_sc_blend(struct gl_shader_cache *sc,
                 enum ra_blend blend_src_rgb,
                 enum ra_blend blend_dst_rgb,
                 enum ra_blend blend_src_alpha,
                 enum ra_blend blend_dst_alpha)
{
    sc->params.enable_blend = 1;
    sc->params.blend_src_rgb = blend_src_rgb;
    sc->params.blend_dst_rgb = blend_dst_rgb;
    sc->params.blend_src_alpha = blend_src_alpha;
    sc->params.blend_dst_alpha = blend_dst_alpha;
}
