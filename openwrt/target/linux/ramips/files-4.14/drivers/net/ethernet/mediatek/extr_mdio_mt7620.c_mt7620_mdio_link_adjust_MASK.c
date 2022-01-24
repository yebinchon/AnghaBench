#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct fe_priv {TYPE_1__* phy; int /*<<< orphan*/ * link; } ;
struct TYPE_2__ {scalar_t__* duplex; int /*<<< orphan*/ * speed; } ;

/* Variables and functions */
 scalar_t__ DUPLEX_FULL ; 
 int /*<<< orphan*/  FUNC0 (struct fe_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct fe_priv*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void FUNC2(struct fe_priv *priv, int port)
{
	FUNC1(priv, port, priv->link[port],
				priv->phy->speed[port],
				(priv->phy->duplex[port] == DUPLEX_FULL));
	FUNC0(priv);
}