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
struct vo {struct priv* priv; } ;
struct priv {TYPE_1__* sws; int /*<<< orphan*/  original_image; } ;
struct mp_image_params {int dummy; } ;
struct TYPE_2__ {struct mp_image_params src; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct vo*) ; 
 int /*<<< orphan*/  FUNC2 (struct vo*) ; 

__attribute__((used)) static int FUNC3(struct vo *vo, struct mp_image_params *fmt)
{
    struct priv *p = vo->priv;

    FUNC0(&p->original_image);

    p->sws->src = *fmt;

    FUNC2(vo);

    if (!FUNC1(vo))
        return -1;

    return 0;
}