
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gl_video {int ra; void* osd_timer; void* blit_timer; void* upload_timer; } ;


 int MSGL_DEBUG ;
 int debug_check_gl (struct gl_video*,char*) ;
 int ra_dump_img_formats (int ,int ) ;
 int ra_dump_tex_formats (int ,int ) ;
 void* timer_pool_create (int ) ;

__attribute__((used)) static void init_gl(struct gl_video *p)
{
    debug_check_gl(p, "before init_gl");

    p->upload_timer = timer_pool_create(p->ra);
    p->blit_timer = timer_pool_create(p->ra);
    p->osd_timer = timer_pool_create(p->ra);

    debug_check_gl(p, "after init_gl");

    ra_dump_tex_formats(p->ra, MSGL_DEBUG);
    ra_dump_img_formats(p->ra, MSGL_DEBUG);
}
