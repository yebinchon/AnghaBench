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
struct gfxinfo {int dummy; } ;
typedef  int /*<<< orphan*/  php_stream ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct gfxinfo*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct gfxinfo**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct gfxinfo *FUNC3(php_stream * stream)
{
	struct gfxinfo *result = (struct gfxinfo *) FUNC0(1, sizeof(struct gfxinfo));

	if (!FUNC2(stream, &result, 0)) {
		FUNC1(result);
		return NULL;
	}

	return result;
}