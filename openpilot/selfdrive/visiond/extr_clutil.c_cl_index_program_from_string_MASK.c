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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  cl_program ;
typedef  int /*<<< orphan*/  cl_device_id ;
typedef  int /*<<< orphan*/  cl_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,char const*,int /*<<< orphan*/ *) ; 

cl_program FUNC2(cl_context ctx, cl_device_id device_id,
                                        const char* src, const char* args,
                                        uint64_t index_hash) {
  uint64_t src_hash = 0;
  cl_program ret = FUNC1(ctx, device_id, src, args, &src_hash);
#ifndef CLU_NO_CACHE
  FUNC0(index_hash, src_hash);
#endif
  return ret;
}