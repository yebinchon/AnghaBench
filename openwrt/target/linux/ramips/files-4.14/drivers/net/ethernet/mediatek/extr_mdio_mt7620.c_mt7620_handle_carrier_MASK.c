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
struct fe_priv {int /*<<< orphan*/  netdev; int /*<<< orphan*/  phy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct fe_priv*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(struct fe_priv *priv)
{
	if (!priv->phy)
		return;

	if (FUNC0(priv))
		FUNC2(priv->netdev);
	else
		FUNC1(priv->netdev);
}