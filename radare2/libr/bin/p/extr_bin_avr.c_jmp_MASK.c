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
typedef  scalar_t__ ut64 ;
typedef  int /*<<< orphan*/  RBuffer ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static bool FUNC1(RBuffer* b, ut64 addr) {
	return (FUNC0 (b, addr) == 0x0c) && (FUNC0 (b, addr + 1) == 0x94);
}