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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct serializer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct serializer*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC1(struct serializer *s, uint32_t u32)
{
	FUNC0(s, (uint16_t)(u32 >> 16));
	FUNC0(s, (uint16_t)u32);
}