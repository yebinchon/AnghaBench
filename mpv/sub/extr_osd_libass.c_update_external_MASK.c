#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_12__ ;

/* Type definitions */
struct osd_style_opts {int dummy; } ;
struct osd_state {TYPE_1__* opts; } ;
struct osd_object {int dummy; } ;
struct TYPE_17__ {TYPE_12__* track; int /*<<< orphan*/  res_y; int /*<<< orphan*/  res_x; } ;
struct osd_external {TYPE_4__ ass; int /*<<< orphan*/  res_y; int /*<<< orphan*/  res_x; int /*<<< orphan*/  text; } ;
struct TYPE_15__ {scalar_t__ len; } ;
typedef  TYPE_2__ bstr ;
struct TYPE_16__ {struct osd_style_opts* defaults; } ;
struct TYPE_14__ {struct osd_style_opts const* osd_style; } ;
struct TYPE_13__ {int PlayResY; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_12__*,char*,char*) ; 
 TYPE_2__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__,char*,TYPE_2__*,TYPE_2__*) ; 
 char* FUNC3 (int /*<<< orphan*/ *,TYPE_2__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (struct osd_state*,struct osd_object*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,struct osd_style_opts const*) ; 
 TYPE_3__ osd_style_conf ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static void FUNC9(struct osd_state *osd, struct osd_object *obj,
                            struct osd_external *ext)
{
    bstr t = FUNC1(ext->text);
    if (!t.len)
        return;
    ext->ass.res_x = ext->res_x;
    ext->ass.res_y = ext->res_y;
    FUNC5(osd, obj, &ext->ass);

    FUNC4(&ext->ass);

    int resy = ext->ass.track->PlayResY;
    FUNC7(FUNC6(&ext->ass, "OSD"), resy, osd->opts->osd_style);

    // Some scripts will reference this style name with \r tags.
    const struct osd_style_opts *def = osd_style_conf.defaults;
    FUNC7(FUNC6(&ext->ass, "Default"), resy, def);

    while (t.len) {
        bstr line;
        FUNC2(t, "\n", &line, &t);
        if (line.len) {
            char *tmp = FUNC3(NULL, line);
            FUNC0(ext->ass.track, "OSD", tmp);
            FUNC8(tmp);
        }
    }
}