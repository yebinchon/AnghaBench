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
struct priv {size_t current_buf; int /*<<< orphan*/ * myximage; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct priv*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct vo *vo)
{
    struct priv *p = vo->priv;
    FUNC0(p, p->myximage[p->current_buf]);
    p->current_buf = (p->current_buf + 1) % 2;
}