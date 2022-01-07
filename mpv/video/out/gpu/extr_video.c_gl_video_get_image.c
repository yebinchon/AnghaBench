
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_image {int dummy; } ;
struct gl_video {int dummy; } ;


 int gl_video_check_format (struct gl_video*,int) ;
 void* gl_video_dr_alloc_buffer (struct gl_video*,int) ;
 int gl_video_dr_free_buffer (struct gl_video*,void*) ;
 struct mp_image* mp_image_from_buffer (int,int,int,int,void*,int,struct gl_video*,int (*) (struct gl_video*,void*)) ;
 int mp_image_get_alloc_size (int,int,int,int) ;

struct mp_image *gl_video_get_image(struct gl_video *p, int imgfmt, int w, int h,
                                    int stride_align)
{
    if (!gl_video_check_format(p, imgfmt))
        return ((void*)0);

    int size = mp_image_get_alloc_size(imgfmt, w, h, stride_align);
    if (size < 0)
        return ((void*)0);

    int alloc_size = size + stride_align;
    void *ptr = gl_video_dr_alloc_buffer(p, alloc_size);
    if (!ptr)
        return ((void*)0);



    struct mp_image *res = mp_image_from_buffer(imgfmt, w, h, stride_align,
                                                ptr, alloc_size, p,
                                                gl_video_dr_free_buffer);
    if (!res)
        gl_video_dr_free_buffer(p, ptr);
    return res;
}
