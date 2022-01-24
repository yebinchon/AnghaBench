#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct gl_video_opts {scalar_t__ interpolation; int /*<<< orphan*/  pbo; int /*<<< orphan*/  shader_cache_dir; int /*<<< orphan*/  background; } ;
struct gl_video {int dsi_warned; struct gl_video_opts opts; int /*<<< orphan*/  global; TYPE_2__* ra; int /*<<< orphan*/  sc; int /*<<< orphan*/  clear_color; int /*<<< orphan*/  force_clear_color; TYPE_1__* opts_cache; int /*<<< orphan*/  cms; int /*<<< orphan*/  use_lut_3d; } ;
struct TYPE_4__ {int /*<<< orphan*/  use_pbo; } ;
struct TYPE_3__ {scalar_t__ opts; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gl_video*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct gl_video*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct gl_video*) ; 
 int /*<<< orphan*/  m_option_type_choice ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct gl_video*) ; 
 int /*<<< orphan*/  FUNC7 (struct gl_video*) ; 

__attribute__((used)) static void FUNC8(struct gl_video *p)
{
    p->use_lut_3d = FUNC2(p->cms);

    // Copy the option fields, so that check_gl_features() can mutate them.
    // This works only for the fields themselves of course, not for any memory
    // referenced by them.
    p->opts = *(struct gl_video_opts *)p->opts_cache->opts;

    if (!p->force_clear_color)
        p->clear_color = p->opts.background;

    FUNC1(p);
    FUNC7(p);
    FUNC3(p->sc, p->opts.shader_cache_dir);
    p->ra->use_pbo = p->opts.pbo;
    FUNC4(p);
    FUNC6(p);

    int vs;
    FUNC5(p->global, "video-sync", &m_option_type_choice, &vs);
    if (p->opts.interpolation && !vs && !p->dsi_warned) {
        FUNC0(p, "Interpolation now requires enabling display-sync mode.\n"
                   "E.g.: --video-sync=display-resample\n");
        p->dsi_warned = true;
    }
}