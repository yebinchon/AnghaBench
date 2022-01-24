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
struct mp_user_filter {char* name; int /*<<< orphan*/  f; int /*<<< orphan*/  wrapper; } ;
struct chain {int /*<<< orphan*/  num_post_filters; int /*<<< orphan*/  post_filters; int /*<<< orphan*/  frame_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  MP_FRAME_AUDIO ; 
 int /*<<< orphan*/  FUNC0 (struct chain*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mp_user_filter*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct mp_user_filter* FUNC2 (struct chain*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct chain *p)
{
    p->frame_type = MP_FRAME_AUDIO;

    struct mp_user_filter *f = FUNC2(p);
    f->name = "userspeed";
    f->f = FUNC3(f->wrapper);
    if (!f->f)
        FUNC1();
    FUNC0(p, p->post_filters, p->num_post_filters, f);
}