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
struct vsc7385_data {int dummy; } ;
struct spi_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 struct vsc7385_data* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct vsc7385_data*) ; 

__attribute__((used)) static int FUNC3(struct spi_device *spi)
{
	struct vsc7385_data	*vsc;

	vsc = FUNC0(&spi->dev);
	FUNC1(&spi->dev, NULL);
	FUNC2(vsc);

	return 0;
}