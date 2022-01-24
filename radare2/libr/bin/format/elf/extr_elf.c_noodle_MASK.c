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
typedef  int /*<<< orphan*/  ut8 ;
struct TYPE_3__ {int /*<<< orphan*/  b; } ;
typedef  TYPE_1__ ELFOBJ ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 

__attribute__((used)) static inline int FUNC4(ELFOBJ *bin, const char *s) {
	if (FUNC1 (bin->b) <= 64)  {
		return 0;
	}
	ut8 tmp[64];
	FUNC0 (bin->b, FUNC1 (bin->b) - 64, tmp, 64);
	return FUNC2 (tmp, 64, (const ut8 *)s, FUNC3 (s)) != NULL;
}