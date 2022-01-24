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
struct ar8xxx_priv {int /*<<< orphan*/  mib_poll_interval; int /*<<< orphan*/  mib_work; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ar8xxx_priv*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct ar8xxx_priv *priv)
{
	if (!FUNC0(priv) || !priv->mib_poll_interval)
		return;

	FUNC2(&priv->mib_work,
			      FUNC1(priv->mib_poll_interval));
}