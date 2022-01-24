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
struct vo {int /*<<< orphan*/ * osd; } ;
struct render_backend {struct priv* priv; } ;
struct priv {int /*<<< orphan*/  renderer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct vo*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct render_backend *ctx, struct vo *vo)
{
    struct priv *p = ctx->priv;

    FUNC1(p->renderer, vo ? vo->osd : NULL);
    if (vo)
        FUNC0(p->renderer, vo);
}