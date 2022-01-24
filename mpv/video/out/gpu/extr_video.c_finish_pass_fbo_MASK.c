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
struct ra_fbo {int dummy; } ;
struct mp_rect {int dummy; } ;
struct gl_video {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gl_video*) ; 
 int /*<<< orphan*/  FUNC1 (struct gl_video*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct gl_video*) ; 
 int /*<<< orphan*/  FUNC3 (struct gl_video*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct gl_video*,struct ra_fbo,int,struct mp_rect const*) ; 

__attribute__((used)) static void FUNC5(struct gl_video *p, struct ra_fbo fbo,
                            bool discard, const struct mp_rect *dst)
{
    FUNC2(p);
    FUNC3(p, FUNC4(p, fbo, discard, dst));
    FUNC1(p, "after rendering");
    FUNC0(p);
}