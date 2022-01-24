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
struct gl_video {int /*<<< orphan*/  ra; void* osd_timer; void* blit_timer; void* upload_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSGL_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (struct gl_video*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct gl_video *p)
{
    FUNC0(p, "before init_gl");

    p->upload_timer = FUNC3(p->ra);
    p->blit_timer = FUNC3(p->ra);
    p->osd_timer = FUNC3(p->ra);

    FUNC0(p, "after init_gl");

    FUNC2(p->ra, MSGL_DEBUG);
    FUNC1(p->ra, MSGL_DEBUG);
}