#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  mpv_format ;
typedef  int /*<<< orphan*/  js_State ;

/* Variables and functions */
 int /*<<< orphan*/  const MPV_FORMAT_DOUBLE ; 
 int /*<<< orphan*/  const MPV_FORMAT_FLAG ; 
 int /*<<< orphan*/  const MPV_FORMAT_NODE ; 
 int /*<<< orphan*/  const MPV_FORMAT_NONE ; 
 int /*<<< orphan*/  const MPV_FORMAT_STRING ; 
 size_t FUNC0 (int /*<<< orphan*/ *,int,char*,char const**,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC6(js_State *J)
{
    const char *fmts[] = {"none", "native", "bool", "string", "number", NULL};
    const mpv_format mf[] = {MPV_FORMAT_NONE, MPV_FORMAT_NODE, MPV_FORMAT_FLAG,
                             MPV_FORMAT_STRING, MPV_FORMAT_DOUBLE};

    mpv_format f = mf[FUNC0(J, 3, "none", fmts, "observe type")];
    int e = FUNC4(FUNC1(J), FUNC2(J, 1),
                                             FUNC3(J, 2),
                                             f);
    FUNC5(J, e);
}