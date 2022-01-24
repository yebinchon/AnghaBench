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
struct zlog_stream {int dummy; } ;

/* Variables and functions */
 size_t FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct zlog_stream*) ; 
 int /*<<< orphan*/  FUNC2 (struct zlog_stream*) ; 
 int /*<<< orphan*/  FUNC3 (struct zlog_stream*,int,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct zlog_stream*,char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct zlog_stream*,char const*,size_t) ; 

void FUNC6(const char *function, int line, int flags,
		const char *prefix, const char *msg) /* {{{ */
{
	struct zlog_stream stream;
	size_t prefix_len = FUNC0(prefix);
	size_t msg_len = FUNC0(msg);

	FUNC3(&stream, flags, msg_len + prefix_len, 0);
	FUNC4(&stream, function, line);
	FUNC5(&stream, prefix, prefix_len);
	FUNC5(&stream, msg, msg_len);
	FUNC2(&stream);
	FUNC1(&stream);
}