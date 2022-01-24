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
typedef  scalar_t__ (* readfn_t ) (void*,unsigned long,char*) ;
typedef  int /*<<< orphan*/  GETS_DATA ;

/* Variables and functions */
 int /*<<< orphan*/  E_WARNING ; 
 int GETS_FETCH_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  gets_stream ; 
 char* FUNC2 (unsigned long,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 unsigned long FUNC4 (scalar_t__,char*,unsigned long) ; 

__attribute__((used)) static char *FUNC5(readfn_t f, void *stream, unsigned long size, GETS_DATA *md) /* {{{ */
{

	/*	write to the gets stream if it is set,
		otherwise forward to c-clients gets */
	if (FUNC0(gets_stream)) {
		char buf[GETS_FETCH_SIZE];

		while (size) {
			unsigned long read;

			if (size > GETS_FETCH_SIZE) {
				read = GETS_FETCH_SIZE;
				size -=GETS_FETCH_SIZE;
			} else {
				read = size;
				size = 0;
			}

			if (!f(stream, read, buf)) {
				FUNC3(NULL, E_WARNING, "Failed to read from socket");
				break;
			} else if (read != FUNC4(FUNC0(gets_stream), buf, read)) {
				FUNC3(NULL, E_WARNING, "Failed to write to stream");
				break;
			}
		}
		return NULL;
	} else {
		char *buf = FUNC2(size + 1, 1);

		if (f(stream, size, buf)) {
			buf[size] = '\0';
		} else {
			FUNC3(NULL, E_WARNING, "Failed to read from socket");
			FUNC1(buf);
			buf = NULL;
		}
		return buf;
	}
}