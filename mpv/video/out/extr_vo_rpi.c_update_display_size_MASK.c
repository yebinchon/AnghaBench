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
typedef  scalar_t__ uint32_t ;
struct vo {struct priv* priv; } ;
struct priv {scalar_t__ w; scalar_t__ h; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vo*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct vo*,char*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__*,scalar_t__*) ; 

__attribute__((used)) static int FUNC3(struct vo *vo)
{
    struct priv *p = vo->priv;

    uint32_t n_w = 0, n_h = 0;
    if (FUNC2(0, &n_w, &n_h) < 0) {
        FUNC0(vo, "Could not get display size.\n");
        return -1;
    }

    if (p->w == n_w && p->h == n_h)
        return 0;

    p->w = n_w;
    p->h = n_h;

    FUNC1(vo, "Display size: %dx%d\n", p->w, p->h);

    return 0;
}