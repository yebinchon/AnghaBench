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
struct gs_timer {void** queries; } ;
typedef  struct gs_timer gs_timer_t ;
typedef  int /*<<< orphan*/  gs_device_t ;
typedef  void* GLuint ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct gs_timer* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,void**) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

gs_timer_t *FUNC4(gs_device_t *device)
{
	FUNC0(device);

	struct gs_timer *timer;

	GLuint queries[2];
	FUNC2(2, queries);
	if (!FUNC3("glGenQueries"))
		return NULL;

	timer = FUNC1(sizeof(struct gs_timer));
	timer->queries[0] = queries[0];
	timer->queries[1] = queries[1];

	return timer;
}