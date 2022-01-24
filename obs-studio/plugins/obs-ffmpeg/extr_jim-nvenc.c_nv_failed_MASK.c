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
struct nvenc_data {int dummy; } ;
typedef  scalar_t__ NVENCSTATUS ;

/* Variables and functions */
 scalar_t__ NV_ENC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,char const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

__attribute__((used)) static inline bool FUNC2(struct nvenc_data *enc, NVENCSTATUS err,
			     const char *func, const char *call)
{
	if (err == NV_ENC_SUCCESS)
		return false;

	FUNC0("%s: %s failed: %d (%s)", func, call, (int)err,
	      FUNC1(err));
	return true;
}