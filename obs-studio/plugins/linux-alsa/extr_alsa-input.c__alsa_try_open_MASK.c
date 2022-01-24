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
struct alsa_data {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct alsa_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct alsa_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct alsa_data*) ; 

bool FUNC3(struct alsa_data *data)
{
	FUNC2(data);

	if (FUNC0(data))
		return true;

	FUNC1(data);

	return false;
}