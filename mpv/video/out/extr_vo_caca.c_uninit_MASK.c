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
struct priv {int /*<<< orphan*/  canvas; int /*<<< orphan*/  display; int /*<<< orphan*/ * dither_buffer; int /*<<< orphan*/ * dither; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct vo *vo)
{
    struct priv *priv = vo->priv;
    FUNC2(priv->dither);
    priv->dither = NULL;
    FUNC3(priv->dither_buffer);
    priv->dither_buffer = NULL;
    FUNC1(priv->display);
    FUNC0(priv->canvas);
}