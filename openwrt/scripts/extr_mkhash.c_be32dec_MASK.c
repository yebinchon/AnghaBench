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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static uint32_t
FUNC1(const void *buf)
{
	const uint8_t *p = buf;

	return (((uint32_t) FUNC0(p)) << 16) | FUNC0(p + 2);
}