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
typedef  int /*<<< orphan*/  va_list ;
struct zlog_stream {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 size_t FUNC0 (char*,int,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct zlog_stream*,char*,size_t) ; 

ssize_t FUNC2(struct zlog_stream *stream, const char *fmt, va_list args) /* {{{ */
{
	char sbuf[1024];
	size_t len;

	len = FUNC0(sbuf, 1024, fmt, args);

	return FUNC1(stream, sbuf, len);
}