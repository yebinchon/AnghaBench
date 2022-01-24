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
struct ra_hwdec_mapper {struct priv* priv; } ;
struct priv {int queue_len; int /*<<< orphan*/  dev11; int /*<<< orphan*/  dev9; int /*<<< orphan*/  ctx11; int /*<<< orphan*/ * queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ra_hwdec_mapper*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct ra_hwdec_mapper *mapper)
{
    struct priv *p = mapper->priv;

    for (int i = 0; i < p->queue_len; i++)
        FUNC1(mapper, p->queue[i]);

    FUNC0(p->ctx11);
    FUNC0(p->dev9);
    FUNC0(p->dev11);
}