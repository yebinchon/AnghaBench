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
struct switch_dev {int dummy; } ;
struct adm6996_priv {int /*<<< orphan*/  reg_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct adm6996_priv*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 struct adm6996_priv* FUNC4 (struct switch_dev*) ; 

__attribute__((used)) static int
FUNC5(struct switch_dev *dev)
{
	struct adm6996_priv *priv = FUNC4(dev);

	FUNC3("reset\n");

	FUNC1(&priv->reg_mutex);
	FUNC0 (priv);
	FUNC2(&priv->reg_mutex);
	return 0;
}