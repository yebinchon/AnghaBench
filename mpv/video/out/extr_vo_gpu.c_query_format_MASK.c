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
struct vo {struct gpu_priv* priv; } ;
struct gpu_priv {int /*<<< orphan*/  renderer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC1(struct vo *vo, int format)
{
    struct gpu_priv *p = vo->priv;
    if (!FUNC0(p->renderer, format))
        return 0;
    return 1;
}