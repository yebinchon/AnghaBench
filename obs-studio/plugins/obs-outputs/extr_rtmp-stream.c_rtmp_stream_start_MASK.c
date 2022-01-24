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
struct rtmp_stream {int /*<<< orphan*/  connect_thread; int /*<<< orphan*/  connecting; int /*<<< orphan*/  output; } ;

/* Variables and functions */
 int /*<<< orphan*/  connect_thread ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct rtmp_stream*) ; 

__attribute__((used)) static bool FUNC4(void *data)
{
	struct rtmp_stream *stream = data;

	if (!FUNC0(stream->output, 0))
		return false;
	if (!FUNC1(stream->output, 0))
		return false;

	FUNC2(&stream->connecting, true);
	return FUNC3(&stream->connect_thread, NULL, connect_thread,
			      stream) == 0;
}