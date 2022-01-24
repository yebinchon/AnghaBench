#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {size_t punteroBuffer; int /*<<< orphan*/  hReadPipeIn; int /*<<< orphan*/ * data; } ;
typedef  TYPE_1__ libbochs_t ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  F_GETFL ; 
 int O_NONBLOCK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,scalar_t__*,int /*<<< orphan*/ ) ; 
 int SIZE_BUF ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,...) ; 
 scalar_t__* lpTmpBuffer ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__*,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,scalar_t__*,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,char*) ; 

bool FUNC9(libbochs_t *b) {
#if __WINDOWS__
	int times = 100;
	DWORD dwRead, aval, leftm;
	bochs_reset_buffer(b);	
	do {
		while (PeekNamedPipe (b->hReadPipeIn, NULL, 0, NULL, &aval, &leftm)) {
			if (aval < 0) break;
			if (!ReadFile (b->hReadPipeIn, &b->data[b->punteroBuffer], SIZE_BUF, &dwRead, 0)) {
				lprintf("bochs_wait: ERROR reading from pipe.\n\n");
				return false;
			}
			if (dwRead)
				b->punteroBuffer +=dwRead;
		}
		if (strstr (b->data, "<bochs:")) {
			break;
		}
		Sleep (5);
	} while (--times);
	return true;
#else
	int flags,n;
	FUNC3 (b);
	flags = FUNC4 (b->hReadPipeIn, F_GETFL, 0);
	(void) FUNC4 (b->hReadPipeIn, (flags | O_NONBLOCK));
	for (;;) {
		n = FUNC7 (b->hReadPipeIn, lpTmpBuffer, SIZE_BUF - 1);
		if (n > 0) {
			lpTmpBuffer[n] = 0;
			if (b->punteroBuffer + n >= SIZE_BUF - 1) {
				FUNC3(b);
			}
			// XXX overflow here
			FUNC6 (b->data + b->punteroBuffer, lpTmpBuffer, n + 1);
			b->punteroBuffer += n;
			if (FUNC8 (&b->data[0], "<bochs:")) {
				break;
			}
		}
	}
	(void) FUNC4 (b->hReadPipeIn, (flags | ~O_NONBLOCK));
	return true;
#endif
}