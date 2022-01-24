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
struct fe_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FE_PSE_FQFC_CFG_INIT ; 
 int /*<<< orphan*/  FE_PSE_FQ_CFG ; 
 scalar_t__ RT305X_SOC_RT3052 ; 
 scalar_t__ RT305X_SOC_RT3352 ; 
 int /*<<< orphan*/  FUNC0 (struct fe_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct fe_priv*) ; 
 int FUNC2 (struct fe_priv*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ ralink_soc ; 

__attribute__((used)) static int FUNC4(struct fe_priv *priv)
{
	int ret;

	if (ralink_soc != RT305X_SOC_RT3052) {
		ret = FUNC2(priv);
		if (ret)
			return ret;
	}

	FUNC1(priv);
	if (ralink_soc != RT305X_SOC_RT3352)
		FUNC3(FE_PSE_FQFC_CFG_INIT, FE_PSE_FQ_CFG);
	FUNC0(priv);

	return 0;
}