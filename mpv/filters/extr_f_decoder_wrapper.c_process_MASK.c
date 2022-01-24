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
struct priv {int /*<<< orphan*/  opt_cache; } ;
struct mp_filter {struct priv* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct priv*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct priv*) ; 

__attribute__((used)) static void FUNC3(struct mp_filter *f)
{
    struct priv *p = f->priv;
    FUNC1(p->opt_cache);

    FUNC0(p);
    FUNC2(p);
}