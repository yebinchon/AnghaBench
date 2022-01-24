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
struct priv {char* dither_antialias; char* dither_charset; char* dither_color; char* dither_algo; int /*<<< orphan*/ * canvas; int /*<<< orphan*/ * display; } ;

/* Variables and functions */
 int ENOSYS ; 
 int /*<<< orphan*/  FUNC0 (struct vo*,char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct vo *vo)
{
    struct priv *priv = vo->priv;

    priv->dither_antialias = "default";
    priv->dither_charset   = "default";
    priv->dither_color     = "default";
    priv->dither_algo      = "none";

    priv->canvas = FUNC1(0, 0);
    if (priv->canvas == NULL) {
        FUNC0(vo, "failed to create canvas\n");
        return ENOSYS;
    }

    priv->display = FUNC2(priv->canvas);

    if (priv->display == NULL) {
        FUNC0(vo, "failed to create display\n");
        FUNC3(priv->canvas);
        return ENOSYS;
    }

    return 0;
}