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
 unsigned int RT305X_ESW_PVIDC_PVID_M ; 
 unsigned int RT305X_ESW_PVIDC_PVID_S ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct rt305x_esw*,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 

__attribute__((used)) static void FUNC2(struct rt305x_esw *esw, unsigned port, unsigned pvid)
{
	unsigned s;

	s = RT305X_ESW_PVIDC_PVID_S * (port % 2);
	FUNC1(esw,
		       FUNC0(port / 2),
		       RT305X_ESW_PVIDC_PVID_M << s,
		       (pvid & RT305X_ESW_PVIDC_PVID_M) << s);
}