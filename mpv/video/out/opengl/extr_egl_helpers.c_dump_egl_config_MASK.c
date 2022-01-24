#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mp_log {int dummy; } ;
struct TYPE_3__ {char* name; int /*<<< orphan*/  attrib; } ;
typedef  int EGLint ;
typedef  int /*<<< orphan*/  EGLDisplay ;
typedef  int /*<<< orphan*/  EGLConfig ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 TYPE_1__* mp_egl_attribs ; 
 int /*<<< orphan*/  FUNC2 (struct mp_log*,int,char*,char const*,...) ; 

__attribute__((used)) static void FUNC3(struct mp_log *log, int msgl, EGLDisplay display,
                            EGLConfig config)
{
    for (int n = 0; n < FUNC0(mp_egl_attribs); n++) {
        const char *name = mp_egl_attribs[n].name;
        EGLint v = -1;
        if (FUNC1(display, config, mp_egl_attribs[n].attrib, &v)) {
            FUNC2(log, msgl, "  %s=%d\n", name, v);
        } else {
            FUNC2(log, msgl, "  %s=<error>\n", name);
        }
    }
}