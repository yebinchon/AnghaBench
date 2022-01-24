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
struct ra_tex {int dummy; } ;
struct ra_format {int /*<<< orphan*/  name; } ;
struct gl_video {int /*<<< orphan*/  ra; int /*<<< orphan*/  log; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gl_video*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ra_tex**) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ra_tex**,int,int,struct ra_format const*) ; 

__attribute__((used)) static bool FUNC3(struct gl_video *p, const struct ra_format *fmt)
{
    FUNC0(p, "Testing FBO format %s\n", fmt->name);
    struct ra_tex *tex = NULL;
    bool success = FUNC2(p->ra, p->log, &tex, 16, 16, fmt);
    FUNC1(p->ra, &tex);
    return success;
}