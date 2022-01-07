
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo {int dummy; } ;
struct sub_bitmaps {int render_index; } ;


 int draw_osd_part (struct vo*,int ) ;
 int generate_osd_part (struct vo*,struct sub_bitmaps*) ;

__attribute__((used)) static void draw_osd_cb(void *ctx, struct sub_bitmaps *imgs)
{
    struct vo *vo = ctx;
    generate_osd_part(vo, imgs);
    draw_osd_part(vo, imgs->render_index);
}
