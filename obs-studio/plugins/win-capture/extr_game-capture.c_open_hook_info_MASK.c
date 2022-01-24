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
struct game_capture {int /*<<< orphan*/  process_id; } ;
typedef  int /*<<< orphan*/  HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  SHMEM_HOOK_INFO ; 
 int /*<<< orphan*/  FUNC0 (struct game_capture*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline HANDLE FUNC1(struct game_capture *gc)
{
	return FUNC0(gc, SHMEM_HOOK_INFO, gc->process_id);
}