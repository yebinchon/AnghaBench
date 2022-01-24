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
struct TYPE_3__ {int /*<<< orphan*/  buildCxt; } ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  TYPE_1__ IspellDict ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (char const*) ; 

__attribute__((used)) static char *
FUNC2(IspellDict *Conf, const char *src)
{
	MemoryContext saveCtx;
	char	   *dst;

	saveCtx = FUNC0(Conf->buildCxt);
	dst = FUNC1(src);
	FUNC0(saveCtx);

	return dst;
}