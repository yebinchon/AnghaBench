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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SECURITY_DESCRIPTOR_MIN_LENGTH ; 
 int /*<<< orphan*/  SECURITY_DESCRIPTOR_REVISION ; 
 int /*<<< orphan*/  FUNC1 (void*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void *FUNC4()
{
	void *sd = FUNC3(SECURITY_DESCRIPTOR_MIN_LENGTH);
	if (!sd) {
		return NULL;
	}

	if (!FUNC0(sd, SECURITY_DESCRIPTOR_REVISION)) {
		goto error;
	}

	if (!FUNC1(sd, true, NULL, false)) {
		goto error;
	}

	return sd;

error:
	FUNC2(sd);
	return NULL;
}