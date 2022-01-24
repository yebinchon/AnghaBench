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
struct priv {int format_change_cont; int format_change_blocked; int /*<<< orphan*/  sub; } ;
struct mp_filter {struct priv* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(struct mp_filter *f)
{
    struct priv *p = f->priv;

    FUNC0(&p->sub);

    p->format_change_cont = false;
    p->format_change_blocked = false;
}