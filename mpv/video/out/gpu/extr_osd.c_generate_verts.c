
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct vertex {int dummy; } ;
struct TYPE_2__ {int color; } ;
struct sub_bitmap {scalar_t__ h; scalar_t__ src_y; scalar_t__ w; scalar_t__ src_x; scalar_t__ dh; scalar_t__ y; scalar_t__ dw; scalar_t__ x; TYPE_1__ libass; } ;
struct mpgl_osd_part {int num_vertices; int num_subparts; int h; int w; struct vertex* vertices; struct sub_bitmap* subparts; } ;
struct gl_transform {int dummy; } ;


 int MP_TARRAY_GROW (struct mpgl_osd_part*,struct vertex*,int) ;
 int write_quad (struct vertex*,struct gl_transform,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int ,int ,int*) ;

__attribute__((used)) static void generate_verts(struct mpgl_osd_part *part, struct gl_transform t)
{
    MP_TARRAY_GROW(part, part->vertices,
                   part->num_vertices + part->num_subparts * 6);

    for (int n = 0; n < part->num_subparts; n++) {
        struct sub_bitmap *b = &part->subparts[n];
        struct vertex *va = &part->vertices[part->num_vertices];



        uint32_t c = b->libass.color;
        uint8_t color[4] = { c >> 24, (c >> 16) & 0xff,
                            (c >> 8) & 0xff, 255 - (c & 0xff) };

        write_quad(va, t,
                   b->x, b->y, b->x + b->dw, b->y + b->dh,
                   b->src_x, b->src_y, b->src_x + b->w, b->src_y + b->h,
                   part->w, part->h, color);

        part->num_vertices += 6;
    }
}
