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
struct vo {struct priv* priv; } ;
struct priv {int /*<<< orphan*/  display_mutex; int /*<<< orphan*/  display_cond; scalar_t__ renderer; scalar_t__ update; int /*<<< orphan*/  next_image; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vo*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tv_callback ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct vo*) ; 

__attribute__((used)) static void FUNC8(struct vo *vo)
{
    struct priv *p = vo->priv;

    FUNC7(tv_callback, vo);

    FUNC5(p->next_image);

    FUNC0(vo);

    if (p->update)
        FUNC6(p->update);

    if (p->renderer)
        FUNC1(p->renderer);

    FUNC2();

    FUNC3(&p->display_cond);
    FUNC4(&p->display_mutex);
}