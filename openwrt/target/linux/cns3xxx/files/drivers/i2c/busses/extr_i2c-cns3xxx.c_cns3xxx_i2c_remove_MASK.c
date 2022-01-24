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
struct resource {scalar_t__ start; scalar_t__ end; } ;
struct platform_device {int dummy; } ;
struct cns3xxx_i2c {int /*<<< orphan*/  base; int /*<<< orphan*/  adap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  IORESOURCE_IRQ ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,struct cns3xxx_i2c*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct cns3xxx_i2c*) ; 
 struct cns3xxx_i2c* FUNC6 (struct platform_device*) ; 
 struct resource* FUNC7 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	struct cns3xxx_i2c *i2c = FUNC6(pdev);
	struct resource *res;

	/* disable i2c logic */
	FUNC1();
	FUNC0();
	/* remove adapter & data */
	FUNC3(&i2c->adap);
	FUNC8(pdev, NULL);

	res = FUNC7(pdev, IORESOURCE_IRQ, 0);
	if (res)
		FUNC2(res->start, i2c);

	FUNC4(i2c->base);

	res = FUNC7(pdev, IORESOURCE_MEM, 0);
	if (res)
		FUNC9(res->start, res->end - res->start + 1);

	FUNC5(i2c);

	return 0;
}