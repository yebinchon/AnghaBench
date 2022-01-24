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
struct gl_video {int output_tex_valid; int /*<<< orphan*/  video_eq; int /*<<< orphan*/  cms; int /*<<< orphan*/  opts_cache; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct gl_video*) ; 

__attribute__((used)) static void FUNC4(struct gl_video *p)
{
    if (FUNC1(p->opts_cache)) {
        FUNC0(p->cms);
        FUNC3(p);
    }

    if (FUNC2(p->video_eq))
        p->output_tex_valid = false;
}