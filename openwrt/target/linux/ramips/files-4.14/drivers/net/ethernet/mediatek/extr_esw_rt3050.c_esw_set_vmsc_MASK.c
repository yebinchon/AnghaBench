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
 unsigned int RT305X_ESW_VMSC_MSC_M ; 
 unsigned int RT305X_ESW_VMSC_MSC_S ; 
 int /*<<< orphan*/  FUNC1 (struct rt305x_esw*,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 

__attribute__((used)) static void FUNC2(struct rt305x_esw *esw, unsigned vlan, unsigned msc)
{
	unsigned s;

	s = RT305X_ESW_VMSC_MSC_S * (vlan % 4);
	FUNC1(esw,
		       FUNC0(vlan / 4),
		       RT305X_ESW_VMSC_MSC_M << s,
		       (msc & RT305X_ESW_VMSC_MSC_M) << s);
}