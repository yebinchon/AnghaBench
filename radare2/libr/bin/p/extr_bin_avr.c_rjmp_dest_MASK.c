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
typedef  int ut64 ;
typedef  int /*<<< orphan*/  RBuffer ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static ut64 FUNC1(ut64 addr, RBuffer* b) {
	ut64 dst = 2 + addr + FUNC0 (b, addr) * 2;
	dst += ((FUNC0 (b, addr + 1) & 0xf) * 2) << 8;
	return dst;
}