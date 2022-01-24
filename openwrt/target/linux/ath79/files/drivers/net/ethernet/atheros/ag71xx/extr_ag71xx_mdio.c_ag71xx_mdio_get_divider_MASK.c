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
typedef  unsigned long u32 ;
struct device_node {int dummy; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 int FUNC0 (unsigned long*) ; 
 int EINVAL ; 
 int ENOENT ; 
 scalar_t__ FUNC1 (struct clk*) ; 
 unsigned long* ar71xx_mdio_div_table ; 
 unsigned long* ar7240_mdio_div_table ; 
 unsigned long* ar933x_mdio_div_table ; 
 unsigned long FUNC2 (struct clk*) ; 
 int /*<<< orphan*/  FUNC3 (struct clk*) ; 
 struct clk* FUNC4 (struct device_node*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct device_node*,char*) ; 
 scalar_t__ FUNC6 (struct device_node*,char*) ; 
 scalar_t__ FUNC7 (struct device_node*,char*,unsigned long*) ; 

__attribute__((used)) static int FUNC8(struct device_node *np, u32 *div)
{
	struct clk *ref_clk = FUNC4(np, 0);
	unsigned long ref_clock;
	u32 mdio_clock;
	const u32 *table;
	int ndivs, i;

	if (FUNC1(ref_clk))
		return -EINVAL;

	ref_clock = FUNC2(ref_clk);
	FUNC3(ref_clk);

	if(FUNC7(np, "qca,mdio-max-frequency", &mdio_clock)) {
		if (FUNC6(np, "builtin-switch"))
			mdio_clock = 5000000;
		else
			mdio_clock = 2000000;
	}

	if (FUNC5(np, "qca,ar9330-mdio") ||
		FUNC5(np, "qca,ar9340-mdio")) {
		table = ar933x_mdio_div_table;
		ndivs = FUNC0(ar933x_mdio_div_table);
	} else if (FUNC5(np, "qca,ar7240-mdio")) {
		table = ar7240_mdio_div_table;
		ndivs = FUNC0(ar7240_mdio_div_table);
	} else {
		table = ar71xx_mdio_div_table;
		ndivs = FUNC0(ar71xx_mdio_div_table);
	}

	for (i = 0; i < ndivs; i++) {
		unsigned long t;

		t = ref_clock / table[i];
		if (t <= mdio_clock) {
			*div = i;
			return 0;
		}
	}

	return -ENOENT;
}