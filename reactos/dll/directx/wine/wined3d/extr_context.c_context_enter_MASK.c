#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct wined3d_context {int needs_set; scalar_t__ pixel_format; int /*<<< orphan*/  hdc; TYPE_3__* gl_info; scalar_t__ hdc_has_format; scalar_t__ hdc_is_private; scalar_t__ restore_dc; struct wined3d_context* restore_ctx; struct wined3d_context* glCtx; scalar_t__ level; } ;
struct TYPE_4__ {scalar_t__ (* p_wglGetPixelFormat ) (int /*<<< orphan*/ ) ;} ;
struct TYPE_5__ {TYPE_1__ wgl; } ;
struct TYPE_6__ {TYPE_2__ gl_ops; } ;
typedef  struct wined3d_context* HGLRC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct wined3d_context*,scalar_t__) ; 
 struct wined3d_context* FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct wined3d_context* FUNC3 () ; 
 scalar_t__ FUNC4 () ; 

__attribute__((used)) static void FUNC5(struct wined3d_context *context)
{
    FUNC0("Entering context %p, level %u.\n", context, context->level + 1);

    if (!context->level++)
    {
        const struct wined3d_context *current_context = FUNC1();
        HGLRC current_gl = FUNC3();

        if (current_gl && (!current_context || current_context->glCtx != current_gl))
        {
            FUNC0("Another GL context (%p on device context %p) is already current.\n",
                    current_gl, FUNC4());
            context->restore_ctx = current_gl;
            context->restore_dc = FUNC4();
            context->needs_set = 1;
        }
        else if (!context->needs_set && !(context->hdc_is_private && context->hdc_has_format)
                    && context->pixel_format != context->gl_info->gl_ops.wgl.p_wglGetPixelFormat(context->hdc))
            context->needs_set = 1;
    }
}