#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct vo {TYPE_1__* x11; } ;
typedef  int /*<<< orphan*/ * XVisualInfo ;
struct TYPE_2__ {int /*<<< orphan*/  display; int /*<<< orphan*/  screen; } ;
typedef  int /*<<< orphan*/ * GLXFBConfig ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ ** FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int const*,int*) ; 
 int /*<<< orphan*/ ** FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ **) ; 

__attribute__((used)) static GLXFBConfig FUNC4(struct vo *vo, const int *attribs, bool alpha)
{
    int fbcount;
    GLXFBConfig *fbc = FUNC1(vo->x11->display, vo->x11->screen,
                                         attribs, &fbcount);
    if (!fbc)
        return NULL;

    // The list in fbc is sorted (so that the first element is the best).
    GLXFBConfig fbconfig = fbcount > 0 ? fbc[0] : NULL;

    if (alpha) {
        for (int n = 0; n < fbcount; n++) {
            XVisualInfo *v = FUNC2(vo->x11->display, fbc[n]);
            if (v) {
                bool is_rgba = FUNC3(v);
                FUNC0(v);
                if (is_rgba) {
                    fbconfig = fbc[n];
                    break;
                }
            }
        }
    }

    FUNC0(fbc);

    return fbconfig;
}