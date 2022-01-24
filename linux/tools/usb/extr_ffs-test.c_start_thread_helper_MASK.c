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
struct thread {char* filename; char* in_name; char* out_name; scalar_t__ (* in ) (struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;scalar_t__ (* out ) (struct thread*,int /*<<< orphan*/ ,scalar_t__) ;scalar_t__ status; int /*<<< orphan*/  buf; int /*<<< orphan*/  buf_size; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 scalar_t__ EAGAIN ; 
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  cleanup_thread ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,char const*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct thread*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*,char const*) ; 

__attribute__((used)) static void *FUNC8(void *arg)
{
	const char *name, *op, *in_name, *out_name;
	struct thread *t = arg;
	ssize_t ret;

	FUNC1("%s: starts\n", t->filename);
	in_name = t->in_name ? t->in_name : t->filename;
	out_name = t->out_name ? t->out_name : t->filename;

	FUNC3(cleanup_thread, arg);

	for (;;) {
		FUNC4();

		ret = t->in(t, t->buf, t->buf_size);
		if (ret > 0) {
			ret = t->out(t, t->buf, ret);
			name = out_name;
			op = "write";
		} else {
			name = in_name;
			op = "read";
		}

		if (ret > 0) {
			/* nop */
		} else if (!ret) {
			FUNC0("%s: %s: EOF", name, op);
			break;
		} else if (errno == EINTR || errno == EAGAIN) {
			FUNC0("%s: %s", name, op);
		} else {
			FUNC7("%s: %s", name, op);
			break;
		}
	}

	FUNC2(1);

	t->status = ret;
	FUNC1("%s: ends\n", t->filename);
	return NULL;
}