#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  info ;
struct TYPE_3__ {int /*<<< orphan*/  SizeOfImage; } ;
typedef  TYPE_1__ MODULEINFO ;
typedef  int /*<<< orphan*/  HMODULE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int) ; 

__attribute__((used)) static inline uint32_t FUNC2(HMODULE module)
{
	MODULEINFO info;
	bool success = !!FUNC1(FUNC0(), module,
					      &info, sizeof(info));
	return success ? info.SizeOfImage : 0;
}