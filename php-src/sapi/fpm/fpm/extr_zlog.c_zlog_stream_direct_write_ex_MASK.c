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
struct zlog_stream {scalar_t__ use_stderr; int /*<<< orphan*/  fd; scalar_t__ use_fd; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  STDERR_FILENO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*,size_t) ; 

__attribute__((used)) static inline ssize_t FUNC1(
		struct zlog_stream *stream, const char *buf, size_t len,
		const char *append, size_t append_len) /* {{{ */
{
	if (stream->use_fd) {
		FUNC0(stream->fd, buf, len);
		if (append_len > 0) {
			FUNC0(stream->fd, append, append_len);
		}
	}

	if (stream->use_stderr) {
		FUNC0(STDERR_FILENO, buf, len);
		if (append_len > 0) {
			FUNC0(STDERR_FILENO, append, append_len);
		}
	}

	return len;
}