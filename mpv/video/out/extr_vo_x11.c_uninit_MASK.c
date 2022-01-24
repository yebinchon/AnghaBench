#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct vo {TYPE_1__* x11; struct priv* priv; } ;
struct priv {int /*<<< orphan*/  original_image; scalar_t__ gc; scalar_t__* myximage; } ;
struct TYPE_2__ {int /*<<< orphan*/  display; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct priv*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct vo*) ; 

__attribute__((used)) static void FUNC4(struct vo *vo)
{
    struct priv *p = vo->priv;
    if (p->myximage[0])
        FUNC1(p, 0);
    if (p->myximage[1])
        FUNC1(p, 1);
    if (p->gc)
        FUNC0(vo->x11->display, p->gc);

    FUNC2(p->original_image);

    FUNC3(vo);
}