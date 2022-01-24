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
typedef  int /*<<< orphan*/  pthread_attr_t ;

/* Variables and functions */
 int MAP_ANON ; 
 int MAP_SHARED ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 int /*<<< orphan*/  PTHREAD_STACK_MIN ; 
 int /*<<< orphan*/  allocator_thread ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 void* internal_ips ; 
 void* internal_ips_lock ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ ,int) ; 
 void* FUNC6 (int /*<<< orphan*/ ,int,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  req_pipefd ; 
 int /*<<< orphan*/  resp_pipefd ; 
 int /*<<< orphan*/  threadfunc ; 

void FUNC11(void) {
	FUNC2();
	void *shm = FUNC6(0, 4096, PROT_WRITE|PROT_READ, MAP_ANON|MAP_SHARED, -1, 0);
	FUNC3(shm);
	internal_ips_lock = shm;
	internal_ips = (void*)((char*)shm + 2048);

	FUNC1(internal_ips_lock);
	FUNC5(internal_ips, 0, sizeof *internal_ips);
	FUNC4(req_pipefd);
	FUNC4(resp_pipefd);
	pthread_attr_t allocator_thread_attr;
	FUNC8(&allocator_thread_attr);
	FUNC9(&allocator_thread_attr, FUNC0(16 * 1024, PTHREAD_STACK_MIN));
	FUNC10(&allocator_thread, &allocator_thread_attr, threadfunc, 0);
	FUNC7(&allocator_thread_attr);
}