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
struct sd_lavc_priv {int /*<<< orphan*/  current_pts; int /*<<< orphan*/  avctx; int /*<<< orphan*/ * subs; } ;
struct sd {struct sd_lavc_priv* priv; } ;

/* Variables and functions */
 int MAX_QUEUE ; 
 int /*<<< orphan*/  MP_NOPTS_VALUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct sd *sd)
{
    struct sd_lavc_priv *priv = sd->priv;

    for (int n = 0; n < MAX_QUEUE; n++)
        FUNC1(&priv->subs[n]);
    // lavc might not do this right for all codecs; may need close+reopen
    FUNC0(priv->avctx);

    priv->current_pts = MP_NOPTS_VALUE;
}