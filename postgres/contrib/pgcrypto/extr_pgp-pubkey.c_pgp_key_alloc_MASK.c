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
typedef  int /*<<< orphan*/  PGP_PubKey ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 

int
FUNC2(PGP_PubKey **pk_p)
{
	PGP_PubKey *pk;

	pk = FUNC1(sizeof(*pk));
	FUNC0(pk, 0, sizeof(*pk));
	*pk_p = pk;
	return 0;
}