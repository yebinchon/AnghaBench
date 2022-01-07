
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vertex {int dummy; } ;
struct ra_fbo {int tex; } ;
struct mpgl_osd_part {size_t format; scalar_t__ num_vertices; int vertices; } ;
struct TYPE_2__ {int w; int h; } ;
struct mpgl_osd {TYPE_1__ osd_res; int stereo_mode; struct mpgl_osd_part** parts; } ;
struct gl_transform {float* t; float** m; } ;
struct gl_shader_cache {int dummy; } ;


 int MP_ARRAY_SIZE (int ) ;
 int** blend_factors ;
 int generate_verts (struct mpgl_osd_part*,struct gl_transform) ;
 int get_3d_side_by_side (int ,int*) ;
 int gl_sc_blend (struct gl_shader_cache*,int const,int const,int const,int const) ;
 int gl_sc_dispatch_draw (struct gl_shader_cache*,int ,int,int ,int ,int,int ,scalar_t__) ;
 int gl_transform_ortho_fbo (struct gl_transform*,struct ra_fbo) ;
 int vertex_vao ;

void mpgl_osd_draw_finish(struct mpgl_osd *ctx, int index,
                          struct gl_shader_cache *sc, struct ra_fbo fbo)
{
    struct mpgl_osd_part *part = ctx->parts[index];

    int div[2];
    get_3d_side_by_side(ctx->stereo_mode, div);

    part->num_vertices = 0;

    for (int x = 0; x < div[0]; x++) {
        for (int y = 0; y < div[1]; y++) {
            struct gl_transform t;
            gl_transform_ortho_fbo(&t, fbo);

            float a_x = ctx->osd_res.w * x;
            float a_y = ctx->osd_res.h * y;
            t.t[0] += a_x * t.m[0][0] + a_y * t.m[1][0];
            t.t[1] += a_x * t.m[0][1] + a_y * t.m[1][1];

            generate_verts(part, t);
        }
    }

    const int *factors = &blend_factors[part->format][0];
    gl_sc_blend(sc, factors[0], factors[1], factors[2], factors[3]);

    gl_sc_dispatch_draw(sc, fbo.tex, 0, vertex_vao, MP_ARRAY_SIZE(vertex_vao),
                        sizeof(struct vertex), part->vertices, part->num_vertices);
}
