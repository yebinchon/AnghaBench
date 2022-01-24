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
struct mt7620_gsw {int dummy; } ;
struct fe_priv {TYPE_1__* soc; } ;
struct TYPE_2__ {scalar_t__ swpriv; } ;

/* Variables and functions */
 int GSW_PORT6 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct mt7620_gsw*,int /*<<< orphan*/ ) ; 

int FUNC2(struct fe_priv *priv)
{
	struct mt7620_gsw *gsw = (struct mt7620_gsw *)priv->soc->swpriv;
	int i;

	for (i = 0; i < GSW_PORT6; i++)
		if (FUNC1(gsw, FUNC0(i)) & 0x1)
			return 1;
	return 0;
}