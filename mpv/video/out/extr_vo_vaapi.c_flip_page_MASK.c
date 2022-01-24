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
struct priv {size_t visible_surface; size_t output_surface; int /*<<< orphan*/ * output_surfaces; } ;

/* Variables and functions */
 int MAX_OUTPUT_SURFACES ; 
 int /*<<< orphan*/  FUNC0 (struct priv*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct vo *vo)
{
    struct priv *p = vo->priv;

    p->visible_surface = p->output_surface;
    FUNC0(p, p->output_surfaces[p->output_surface]);
    p->output_surface = (p->output_surface + 1) % MAX_OUTPUT_SURFACES;
}