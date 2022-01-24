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
struct atm_vcc {int dummy; } ;
struct atm_qos {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct atm_vcc*) ; 
 int /*<<< orphan*/  FUNC1 (struct atm_vcc*,struct atm_qos*,int) ; 

__attribute__((used)) static int FUNC2(struct atm_vcc *vcc, struct atm_qos *qos, int flags)
{
	int conn;

	if ( vcc == NULL || qos == NULL )
		return -EINVAL;

	conn = FUNC0(vcc);
	if ( conn < 0 )
		return -EINVAL;

	FUNC1(vcc, qos, conn);

	return 0;
}