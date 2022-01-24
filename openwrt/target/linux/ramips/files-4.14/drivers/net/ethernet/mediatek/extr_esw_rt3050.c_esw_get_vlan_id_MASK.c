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
struct rt305x_esw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 unsigned int RT305X_ESW_VLANI_VID_M ; 
 unsigned int RT305X_ESW_VLANI_VID_S ; 
 unsigned int FUNC1 (struct rt305x_esw*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned FUNC2(struct rt305x_esw *esw, unsigned vlan)
{
	unsigned s;
	unsigned val;

	s = RT305X_ESW_VLANI_VID_S * (vlan % 2);
	val = FUNC1(esw, FUNC0(vlan / 2));
	val = (val >> s) & RT305X_ESW_VLANI_VID_M;

	return val;
}