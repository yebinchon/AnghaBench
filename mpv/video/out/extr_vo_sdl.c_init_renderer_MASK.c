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
struct priv {scalar_t__ renderer_index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vo*,char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  SDL_HINT_RENDER_DRIVER ; 
 scalar_t__ FUNC3 (struct vo*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct vo *vo)
{
    struct priv *vc = vo->priv;

    int n = FUNC2();
    int i;

    if (vc->renderer_index >= 0)
        if (FUNC3(vo, vc->renderer_index, NULL))
            return 0;

    for (i = 0; i < n; ++i)
        if (FUNC3(vo, i, FUNC1(SDL_HINT_RENDER_DRIVER)))
            return 0;

    for (i = 0; i < n; ++i)
        if (FUNC3(vo, i, NULL))
            return 0;

    FUNC0(vo, "No supported renderer\n");
    return -1;
}