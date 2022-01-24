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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  LOGDIR_NAME_SIZE ; 
 unsigned int RIM_CHUNK_SIZE ; 
 char* FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/ ** fp ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  logdir ; 
 char* logfilename ; 
 int rim_process_pid ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC7(unsigned int tid,
					  unsigned int *addr,
					  unsigned int cur_sweep_id,
					  unsigned int prev_sweep_id)
{
	FILE *f;
	char logfile[30];
	char path[LOGDIR_NAME_SIZE + 30];
	char separator[2] = "/";
	char *chunk_start = FUNC0(tid);
	unsigned int size = RIM_CHUNK_SIZE;

	FUNC4(logfile, logfilename, tid);
	FUNC6(path, logdir);
	FUNC5(path, separator);
	FUNC5(path, logfile);
	f = FUNC2(path, "w");

	if (!f) {
		FUNC1("Unable to create logfile\n");
	}

	fp[tid] = f;

	FUNC3(f, "----------------------------------------------------------\n");
	FUNC3(f, "PID                = %d\n", rim_process_pid);
	FUNC3(f, "Thread id          = %02d\n", tid);
	FUNC3(f, "Chunk Start Addr   = 0x%016lx\n", (unsigned long)chunk_start);
	FUNC3(f, "Chunk Size         = %d\n", size);
	FUNC3(f, "Next Store Addr    = 0x%016lx\n", (unsigned long)addr);
	FUNC3(f, "Current sweep-id   = 0x%08x\n", cur_sweep_id);
	FUNC3(f, "Previous sweep-id  = 0x%08x\n", prev_sweep_id);
	FUNC3(f, "----------------------------------------------------------\n");
}