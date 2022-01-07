
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ra_tex_params {int dimensions; int d; int render_src; int src_linear; int non_normalized; struct ra_format const* format; int h; int w; } ;
struct ra_hwdec_mapper {int * tex; int ra; TYPE_1__* src; struct priv* priv; } ;
struct ra_format {int dummy; } ;
struct TYPE_6__ {int const num_planes; struct ra_format** planes; } ;
struct priv {int * gl_planes; TYPE_2__ desc; scalar_t__ pbuf; } ;
struct TYPE_7__ {int (* GetError ) () ;int (* BindTexture ) (int ,int ) ;} ;
struct TYPE_5__ {scalar_t__* planes; } ;
typedef int IOSurfaceRef ;
typedef int GLint ;
typedef int GLenum ;
typedef TYPE_3__ GL ;
typedef scalar_t__ CVPixelBufferRef ;
typedef scalar_t__ CGLError ;


 int CGLErrorString (scalar_t__) ;
 int CGLGetCurrentContext () ;
 scalar_t__ CGLTexImageIOSurface2D (int ,int ,int ,int ,int ,int ,int ,int ,int) ;
 int CVPixelBufferGetIOSurface (scalar_t__) ;
 int CVPixelBufferGetPlaneCount (scalar_t__) ;
 int CVPixelBufferIsPlanar (scalar_t__) ;
 int CVPixelBufferRelease (scalar_t__) ;
 int CVPixelBufferRetain (scalar_t__) ;
 int GL_TEXTURE_RECTANGLE ;
 int IOSurfaceGetHeightOfPlane (int ,int) ;
 int IOSurfaceGetWidthOfPlane (int ,int) ;
 int MP_ERR (struct ra_hwdec_mapper*,char*,...) ;
 int assert (int) ;
 scalar_t__ kCGLNoError ;
 int ra_create_wrapped_tex (int ,struct ra_tex_params*,int ) ;
 TYPE_3__* ra_gl_get (int ) ;
 int ra_gl_get_format (struct ra_format const*,int *,int *,int *) ;
 int stub1 (int ,int ) ;
 int stub2 (int ,int ) ;
 int stub3 () ;

__attribute__((used)) static int mapper_map(struct ra_hwdec_mapper *mapper)
{
    struct priv *p = mapper->priv;
    GL *gl = ra_gl_get(mapper->ra);

    CVPixelBufferRelease(p->pbuf);
    p->pbuf = (CVPixelBufferRef)mapper->src->planes[3];
    CVPixelBufferRetain(p->pbuf);
    IOSurfaceRef surface = CVPixelBufferGetIOSurface(p->pbuf);
    if (!surface) {
        MP_ERR(mapper, "CVPixelBuffer has no IOSurface\n");
        return -1;
    }

    const bool planar = CVPixelBufferIsPlanar(p->pbuf);
    const int planes = CVPixelBufferGetPlaneCount(p->pbuf);
    assert((planar && planes == p->desc.num_planes) || p->desc.num_planes == 1);

    GLenum gl_target = GL_TEXTURE_RECTANGLE;

    for (int i = 0; i < p->desc.num_planes; i++) {
        const struct ra_format *fmt = p->desc.planes[i];

        GLint internal_format;
        GLenum format;
        GLenum type;
        ra_gl_get_format(fmt, &internal_format, &format, &type);

        gl->BindTexture(gl_target, p->gl_planes[i]);

        CGLError err = CGLTexImageIOSurface2D(
            CGLGetCurrentContext(), gl_target,
            internal_format,
            IOSurfaceGetWidthOfPlane(surface, i),
            IOSurfaceGetHeightOfPlane(surface, i),
            format, type, surface, i);

        gl->BindTexture(gl_target, 0);

        if (err != kCGLNoError) {
            MP_ERR(mapper,
                   "error creating IOSurface texture for plane %d: %s (%x)\n",
                   i, CGLErrorString(err), gl->GetError());
            return -1;
        }

        struct ra_tex_params params = {
            .dimensions = 2,
            .w = IOSurfaceGetWidthOfPlane(surface, i),
            .h = IOSurfaceGetHeightOfPlane(surface, i),
            .d = 1,
            .format = fmt,
            .render_src = 1,
            .src_linear = 1,
            .non_normalized = gl_target == GL_TEXTURE_RECTANGLE,
        };

        mapper->tex[i] = ra_create_wrapped_tex(mapper->ra, &params,
                                               p->gl_planes[i]);
        if (!mapper->tex[i])
            return -1;
    }

    return 0;
}
