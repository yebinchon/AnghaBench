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
typedef  scalar_t__ uint64_t ;
struct TYPE_3__ {int /*<<< orphan*/ * queries; } ;
typedef  TYPE_1__ gs_timer_t ;
typedef  scalar_t__ GLuint64 ;
typedef  int /*<<< orphan*/  GLint ;

/* Variables and functions */
 int /*<<< orphan*/  GL_QUERY_RESULT ; 
 int /*<<< orphan*/  GL_QUERY_RESULT_AVAILABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

bool FUNC3(gs_timer_t *timer, uint64_t *ticks)
{
	GLint available = 0;
	FUNC0(timer->queries[1], GL_QUERY_RESULT_AVAILABLE,
			   &available);

	GLuint64 begin, end;
	FUNC1(timer->queries[0], GL_QUERY_RESULT, &begin);
	FUNC2("glGetQueryObjectui64v");
	FUNC1(timer->queries[1], GL_QUERY_RESULT, &end);
	FUNC2("glGetQueryObjectui64v");

	*ticks = end - begin;
	return true;
}