
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_image {int hwdec_mapped; int mpi; scalar_t__ id; int planes; } ;
struct gl_video {scalar_t__ hwdec_mapper; scalar_t__ hwdec_active; struct video_image image; } ;


 int assert (int) ;
 int gc_pending_dr_fences (struct gl_video*,int) ;
 int memset (int ,int ,int) ;
 int mp_image_unrefp (int *) ;
 int ra_hwdec_mapper_unmap (scalar_t__) ;

__attribute__((used)) static void unref_current_image(struct gl_video *p)
{
    struct video_image *vimg = &p->image;

    if (vimg->hwdec_mapped) {
        assert(p->hwdec_active && p->hwdec_mapper);
        ra_hwdec_mapper_unmap(p->hwdec_mapper);
        memset(vimg->planes, 0, sizeof(vimg->planes));
        vimg->hwdec_mapped = 0;
    }

    vimg->id = 0;

    mp_image_unrefp(&vimg->mpi);



    gc_pending_dr_fences(p, 0);
}
