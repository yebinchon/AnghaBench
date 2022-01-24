#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  js_State ;
struct TYPE_5__ {TYPE_1__* mpctx; } ;
struct TYPE_4__ {int /*<<< orphan*/  global; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*) ; 
 int FUNC3 (char const*,int,int,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,char const*) ; 
 char* FUNC6 (int /*<<< orphan*/ *,int) ; 
 char* FUNC7 (void*,int /*<<< orphan*/ ,char const*) ; 
 int FUNC8 (char const*) ; 
 char const* FUNC9 (char const*,char const*) ; 

__attribute__((used)) static void FUNC10(js_State *J, void *af)
{
    static const char *prefix = "file://";
    const char *fname = FUNC6(J, 1);
    const char *data = FUNC6(J, 2);
    if (FUNC9(fname, prefix) != fname)  // simple protection for incorrect use
        FUNC5(J, "File name must be prefixed with '%s'", prefix);
    fname += FUNC8(prefix);
    fname = FUNC7(af, FUNC4(J)->mpctx->global, fname);
    FUNC0(FUNC4(J), "Writing file '%s'\n", fname);

    FILE *f = FUNC2(fname, "wb");
    if (!f)
        FUNC5(J, "Cannot open file for writing: '%s'", fname);
    FUNC1(af, f);

    int len = FUNC8(data);  // limited by terminating null
    int wrote = FUNC3(data, 1, len, f);
    if (len != wrote)
        FUNC5(J, "Cannot write to file: '%s'", fname);
}