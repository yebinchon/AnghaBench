#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct ra_tex_params {int dimensions; int d; int render_src; int src_linear; int non_normalized; struct ra_format const* format; int /*<<< orphan*/  h; int /*<<< orphan*/  w; } ;
struct ra_hwdec_mapper {int /*<<< orphan*/ * tex; int /*<<< orphan*/  ra; TYPE_1__* src; struct priv* priv; } ;
struct ra_format {int dummy; } ;
struct TYPE_6__ {int const num_planes; struct ra_format** planes; } ;
struct priv {int /*<<< orphan*/ * gl_planes; TYPE_2__ desc; scalar_t__ pbuf; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* GetError ) () ;int /*<<< orphan*/  (* BindTexture ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_5__ {scalar_t__* planes; } ;
typedef  int /*<<< orphan*/  IOSurfaceRef ;
typedef  int /*<<< orphan*/  GLint ;
typedef  int /*<<< orphan*/  GLenum ;
typedef  TYPE_3__ GL ;
typedef  scalar_t__ CVPixelBufferRef ;
typedef  scalar_t__ CGLError ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int FUNC4 (scalar_t__) ; 
 int FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  GL_TEXTURE_RECTANGLE ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct ra_hwdec_mapper*,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 scalar_t__ kCGLNoError ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,struct ra_tex_params*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct ra_format const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 () ; 

__attribute__((used)) static int FUNC18(struct ra_hwdec_mapper *mapper)
{
    struct priv *p = mapper->priv;
    GL *gl = FUNC13(mapper->ra);

    FUNC6(p->pbuf);
    p->pbuf = (CVPixelBufferRef)mapper->src->planes[3];
    FUNC7(p->pbuf);
    IOSurfaceRef surface = FUNC3(p->pbuf);
    if (!surface) {
        FUNC10(mapper, "CVPixelBuffer has no IOSurface\n");
        return -1;
    }

    const bool planar = FUNC5(p->pbuf);
    const int planes  = FUNC4(p->pbuf);
    FUNC11((planar && planes == p->desc.num_planes) || p->desc.num_planes == 1);

    GLenum gl_target = GL_TEXTURE_RECTANGLE;

    for (int i = 0; i < p->desc.num_planes; i++) {
        const struct ra_format *fmt = p->desc.planes[i];

        GLint internal_format;
        GLenum format;
        GLenum type;
        FUNC14(fmt, &internal_format, &format, &type);

        gl->BindTexture(gl_target, p->gl_planes[i]);

        CGLError err = FUNC2(
            FUNC1(), gl_target,
            internal_format,
            FUNC9(surface, i),
            FUNC8(surface, i),
            format, type, surface, i);

        gl->BindTexture(gl_target, 0);

        if (err != kCGLNoError) {
            FUNC10(mapper,
                   "error creating IOSurface texture for plane %d: %s (%x)\n",
                   i, FUNC0(err), gl->GetError());
            return -1;
        }

        struct ra_tex_params params = {
            .dimensions = 2,
            .w = FUNC9(surface, i),
            .h = FUNC8(surface, i),
            .d = 1,
            .format = fmt,
            .render_src = true,
            .src_linear = true,
            .non_normalized = gl_target == GL_TEXTURE_RECTANGLE,
        };

        mapper->tex[i] = FUNC12(mapper->ra, &params,
                                               p->gl_planes[i]);
        if (!mapper->tex[i])
            return -1;
    }

    return 0;
}