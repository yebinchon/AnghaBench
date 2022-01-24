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
typedef  int /*<<< orphan*/  pdo_driver_t ;

/* Variables and functions */
 int /*<<< orphan*/  pdo_driver_hash ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,char*,int) ; 

pdo_driver_t *FUNC1(const char *name, int namelen) /* {{{ */
{
	return FUNC0(&pdo_driver_hash, (char*)name, namelen);
}