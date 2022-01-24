#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct zlog_stream {unsigned int is_stdout; int child_pid; } ;
struct fpm_event_s {int fd; } ;
struct fpm_child_s {int fd_stdout; int fd_stderr; scalar_t__ pid; TYPE_2__* wp; struct zlog_stream* log_stream; struct fpm_event_s ev_stderr; struct fpm_event_s ev_stdout; } ;
struct TYPE_4__ {TYPE_1__* config; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; int /*<<< orphan*/  decorate_workers_output; } ;

/* Variables and functions */
 scalar_t__ EAGAIN ; 
 scalar_t__ EWOULDBLOCK ; 
 int /*<<< orphan*/  STDERR_FILENO ; 
 int /*<<< orphan*/  STREAM_SET_MSG_PREFIX_FMT ; 
 int /*<<< orphan*/  ZLOG_SYSERROR ; 
 int /*<<< orphan*/  ZLOG_TRUE ; 
 int /*<<< orphan*/  ZLOG_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (struct fpm_event_s*) ; 
 struct zlog_stream* FUNC2 (int) ; 
 char* FUNC3 (char*,char,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 int FUNC5 (int,char*,int const) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct zlog_stream*) ; 
 int /*<<< orphan*/  FUNC8 (struct zlog_stream*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct zlog_stream*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct zlog_stream*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct zlog_stream*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct zlog_stream*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC13 (struct zlog_stream*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct zlog_stream*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC15 (struct zlog_stream*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct zlog_stream*,char*,int) ; 

__attribute__((used)) static void FUNC17(struct fpm_event_s *ev, short which, void *arg) /* {{{ */
{
	static const int max_buf_size = 1024;
	int fd = ev->fd;
	char buf[max_buf_size];
	struct fpm_child_s *child;
	int is_stdout;
	struct fpm_event_s *event;
	int fifo_in = 1, fifo_out = 1;
	int in_buf = 0;
	int read_fail = 0, finish_log_stream = 0, create_log_stream;
	int res;
	struct zlog_stream *log_stream;

	if (!arg) {
		return;
	}
	child = (struct fpm_child_s *)arg;

	is_stdout = (fd == child->fd_stdout);
	if (is_stdout) {
		event = &child->ev_stdout;
	} else {
		event = &child->ev_stderr;
	}

	create_log_stream = !child->log_stream;
	if (create_log_stream) {
		log_stream = child->log_stream = FUNC2(sizeof(struct zlog_stream));
		FUNC8(log_stream, ZLOG_WARNING, STDERR_FILENO);
		FUNC10(log_stream, child->wp->config->decorate_workers_output);
		FUNC15(log_stream, ZLOG_TRUE);
		FUNC12(log_stream, STREAM_SET_MSG_PREFIX_FMT,
				child->wp->config->name, (int) child->pid, is_stdout ? "stdout" : "stderr");
		FUNC13(log_stream, ZLOG_TRUE);
		FUNC11(log_stream, is_stdout);
		FUNC9(log_stream, (int)child->pid);
	} else {
		log_stream = child->log_stream;
		// if fd type (stdout/stderr) or child's pid is changed,
		// then the stream will be finished and msg's prefix will be reinitialized
		if (log_stream->is_stdout != (unsigned int)is_stdout || log_stream->child_pid != (int)child->pid) {
			FUNC7(log_stream);
			FUNC12(log_stream, STREAM_SET_MSG_PREFIX_FMT,
					child->wp->config->name, (int) child->pid, is_stdout ? "stdout" : "stderr");
			FUNC11(log_stream, is_stdout);
			FUNC9(log_stream, (int)child->pid);
		}
	}

	while (fifo_in || fifo_out) {
		if (fifo_in) {
			res = FUNC5(fd, buf + in_buf, max_buf_size - 1 - in_buf);
			if (res <= 0) { /* no data */
				fifo_in = 0;
				if (res == 0 || (errno != EAGAIN && errno != EWOULDBLOCK)) {
					/* pipe is closed or error */
					read_fail = (res < 0) ? res : 1;
				}
			} else {
				in_buf += res;
				/* if buffer ends with \0, then the stream will be finished */
				if (!buf[in_buf - 1]) {
					finish_log_stream = 1;
					in_buf--;
				}
			}
		}

		if (fifo_out) {
			if (in_buf == 0) {
				fifo_out = 0;
			} else {
				char *nl;

				nl = FUNC3(buf, '\n', in_buf);
				if (nl) {
					/* we should print each new line int the new message */
					int out_len = nl - buf;
					FUNC16(log_stream, buf, out_len);
					FUNC7(log_stream);
					/* skip new line */
					out_len++;
					/* move data in the buffer */
					FUNC4(buf, buf + out_len, in_buf - out_len);
					in_buf -= out_len;
				} else if (in_buf == max_buf_size - 1 || !fifo_in) {
					/* we should print if no more space in the buffer or no more data to come */
					FUNC16(log_stream, buf, in_buf);
					in_buf = 0;
				}
			}
		}
	}

	if (read_fail) {
		if (create_log_stream) {
			FUNC14(log_stream, NULL, ", pipe is closed");
			FUNC7(log_stream);
		}
		if (read_fail < 0) {
			FUNC6(ZLOG_SYSERROR, "unable to read what child say");
		}

		FUNC1(event);

		if (is_stdout) {
			FUNC0(child->fd_stdout);
			child->fd_stdout = -1;
		} else {
			FUNC0(child->fd_stderr);
			child->fd_stderr = -1;
		}
	} else if (finish_log_stream) {
		FUNC7(log_stream);
	}
}