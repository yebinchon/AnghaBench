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
struct stinger_info {int transitioning; scalar_t__ media_source; int /*<<< orphan*/  source; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC1(void *data)
{
	struct stinger_info *s = data;

	if (s->media_source)
		FUNC0(s->source, s->media_source);

	s->transitioning = false;
}