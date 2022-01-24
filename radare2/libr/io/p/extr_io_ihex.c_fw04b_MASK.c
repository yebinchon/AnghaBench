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
typedef  scalar_t__ ut8 ;
typedef  int ut16 ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char*,int,scalar_t__) ; 

__attribute__((used)) static int FUNC1(FILE *fd, ut16 eaddr) {
	ut8 cks = 0 - (6 + (eaddr >> 8) + (eaddr & 0xff));
	return FUNC0 (fd, ":02000004%04X%02X\n", eaddr, cks);

}