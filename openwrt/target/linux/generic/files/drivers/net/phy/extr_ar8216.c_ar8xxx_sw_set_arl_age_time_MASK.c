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
typedef  int u32 ;
struct TYPE_2__ {int i; } ;
struct switch_val {TYPE_1__ value; } ;
struct switch_dev {int dummy; } ;
struct switch_attr {int dummy; } ;
struct ar8xxx_priv {int arl_age_time; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int) ; 
 struct ar8xxx_priv* FUNC1 (struct switch_dev*) ; 

int
FUNC2(struct switch_dev *dev, const struct switch_attr *attr,
			   struct switch_val *val)
{
	struct ar8xxx_priv *priv = FUNC1(dev);
	int age_time = val->value.i;
	u32 age_time_val;

	if (age_time < 0)
		return -EINVAL;

	age_time_val = FUNC0(age_time);
	if (age_time_val == 0 || age_time_val > 0xffff)
		return -EINVAL;

	priv->arl_age_time = age_time;
	return 0;
}