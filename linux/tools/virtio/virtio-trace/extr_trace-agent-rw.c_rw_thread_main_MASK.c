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
struct rw_thread_info {scalar_t__ pipe_size; int /*<<< orphan*/  cpu_num; int /*<<< orphan*/  out_fd; int /*<<< orphan*/  write_pipe; int /*<<< orphan*/  read_pipe; int /*<<< orphan*/  in_fd; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  READ_WAIT_USEC ; 
 int SPLICE_F_MORE ; 
 int SPLICE_F_MOVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cond_wakeup ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  global_run_operation ; 
 scalar_t__ global_sig_receive ; 
 int /*<<< orphan*/  mutex_notify ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *FUNC10(void *thread_info)
{
	ssize_t rlen, wlen;
	ssize_t ret;
	struct rw_thread_info *ts = (struct rw_thread_info *)thread_info;

	FUNC0(ts->cpu_num);

	while (1) {
		/* Wait for a read order of trace data by Host OS */
		if (!global_run_operation) {
			FUNC5(&mutex_notify);
			FUNC4(&cond_wakeup, &mutex_notify);
			FUNC6(&mutex_notify);
		}

		if (global_sig_receive)
			break;

		/*
		 * Each thread read trace_pipe_raw of each cpu bounding the
		 * thread, so contention of multi-threads does not occur.
		 */
		rlen = FUNC8(ts->in_fd, NULL, ts->read_pipe, NULL,
				ts->pipe_size, SPLICE_F_MOVE | SPLICE_F_MORE);

		if (rlen < 0) {
			FUNC3("Splice_read in rw-thread(%d)\n", ts->cpu_num);
			goto error;
		} else if (rlen == 0) {
			/*
			 * If trace data do not exist or are unreadable not
			 * for exceeding the page size, splice_read returns
			 * NULL. Then, this waits for being filled the data in a
			 * ring-buffer.
			 */
			FUNC9(READ_WAIT_USEC);
			FUNC2("Read retry(cpu:%d)\n", ts->cpu_num);
			continue;
		}

		wlen = 0;

		do {
			ret = FUNC8(ts->write_pipe, NULL, ts->out_fd, NULL,
					rlen - wlen,
					SPLICE_F_MOVE | SPLICE_F_MORE);

			if (ret < 0) {
				FUNC3("Splice_write in rw-thread(%d)\n",
								ts->cpu_num);
				goto error;
			} else if (ret == 0)
				/*
				 * When host reader is not in time for reading
				 * trace data, guest will be stopped. This is
				 * because char dev in QEMU is not supported
				 * non-blocking mode. Then, writer might be
				 * sleep in that case.
				 * This sleep will be removed by supporting
				 * non-blocking mode.
				 */
				FUNC7(1);
			wlen += ret;
		} while (wlen < rlen);
	}

	return NULL;

error:
	FUNC1(EXIT_FAILURE);
}