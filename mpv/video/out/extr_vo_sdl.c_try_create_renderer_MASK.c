#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct vo {struct priv* priv; } ;
struct TYPE_5__ {int /*<<< orphan*/  name; } ;
struct priv {int renderer_index; TYPE_1__ renderer_info; int /*<<< orphan*/  osd_format; int /*<<< orphan*/  allow_sw; int /*<<< orphan*/  renderer; int /*<<< orphan*/  window; } ;
typedef  TYPE_1__ SDL_RendererInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vo*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct vo*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int,TYPE_1__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (struct vo*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC7(struct vo *vo, int i, const char *driver)
{
    struct priv *vc = vo->priv;

    // first probe
    SDL_RendererInfo ri;
    if (FUNC3(i, &ri))
        return false;
    if (!FUNC6(&ri, driver, vc->allow_sw, NULL))
        return false;

    vc->renderer = FUNC2(vc->window, i, 0);
    if (!vc->renderer) {
        FUNC0(vo, "SDL_CreateRenderer failed\n");
        return false;
    }

    if (FUNC4(vc->renderer, &vc->renderer_info)) {
        FUNC0(vo, "SDL_GetRendererInfo failed\n");
        FUNC5(vo);
        return false;
    }

    if (!FUNC6(&vc->renderer_info, NULL, vc->allow_sw,
                          &vc->osd_format)) {
        FUNC0(vo, "Renderer '%s' does not fulfill "
                                  "requirements on this system\n",
                                  vc->renderer_info.name);
        FUNC5(vo);
        return false;
    }

    if (vc->renderer_index != i) {
        FUNC1(vo, "Using %s\n", vc->renderer_info.name);
        vc->renderer_index = i;
    }

    return true;
}