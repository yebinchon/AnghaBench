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
struct priv {scalar_t__ pool; int /*<<< orphan*/ * swdec_surfaces; int /*<<< orphan*/  black_surface; } ;

/* Variables and functions */
 int MAX_OUTPUT_SURFACES ; 
 int /*<<< orphan*/  FUNC0 (struct priv*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct priv *p)
{
    FUNC0(p);

    FUNC2(&p->black_surface);

    for (int n = 0; n < MAX_OUTPUT_SURFACES; n++)
        FUNC2(&p->swdec_surfaces[n]);

    if (p->pool)
        FUNC1(p->pool);
}