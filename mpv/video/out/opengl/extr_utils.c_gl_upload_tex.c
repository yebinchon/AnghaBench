
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int mpgl_caps; int (* PixelStorei ) (int ,int) ;int (* TexSubImage2D ) (int ,int ,int,int,int,int,int ,int ,int const*) ;} ;
typedef int GLenum ;
typedef TYPE_1__ GL ;


 int GL_UNPACK_ALIGNMENT ;
 int GL_UNPACK_ROW_LENGTH ;
 int MPGL_CAP_ROW_LENGTH ;
 int assert (int) ;
 int get_alignment (int) ;
 int gl_bytes_per_pixel (int ,int ) ;
 int stub1 (int ,int) ;
 int stub2 (int ,int) ;
 int stub3 (int ,int ,int,int,int,int,int ,int ,int const*) ;
 int stub4 (int ,int ,int,int,int,int,int ,int ,int const*) ;
 int stub5 (int ,int) ;
 int stub6 (int ,int) ;

void gl_upload_tex(GL *gl, GLenum target, GLenum format, GLenum type,
                   const void *dataptr, int stride,
                   int x, int y, int w, int h)
{
    int bpp = gl_bytes_per_pixel(format, type);
    const uint8_t *data = dataptr;
    int y_max = y + h;
    if (w <= 0 || h <= 0 || !bpp)
        return;
    assert(stride > 0);
    gl->PixelStorei(GL_UNPACK_ALIGNMENT, get_alignment(stride));
    int slice = h;
    if (gl->mpgl_caps & MPGL_CAP_ROW_LENGTH) {

        gl->PixelStorei(GL_UNPACK_ROW_LENGTH, stride / bpp);
    } else {
        if (stride != bpp * w)
            slice = 1;
    }
    for (; y + slice <= y_max; y += slice) {
        gl->TexSubImage2D(target, 0, x, y, w, slice, format, type, data);
        data += stride * slice;
    }
    if (y < y_max)
        gl->TexSubImage2D(target, 0, x, y, w, y_max - y, format, type, data);
    if (gl->mpgl_caps & MPGL_CAP_ROW_LENGTH)
        gl->PixelStorei(GL_UNPACK_ROW_LENGTH, 0);
    gl->PixelStorei(GL_UNPACK_ALIGNMENT, 4);
}
