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
struct magic_set {int dummy; } ;
typedef  int /*<<< orphan*/  php_stream ;

/* Variables and functions */
 char const* FUNC0 (struct magic_set*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

const char *
FUNC1(struct magic_set *ms, php_stream *stream)
{
	if (ms == NULL)
		return NULL;
	return FUNC0(ms, NULL, stream);
}