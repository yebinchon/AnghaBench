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
typedef  int /*<<< orphan*/  pa_stream_flags_t ;
typedef  int /*<<< orphan*/  pa_stream ;
typedef  int /*<<< orphan*/  pa_buffer_attr ;
typedef  int int_fast32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,size_t) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 (char const*) ; 

int_fast32_t FUNC8(pa_stream *s, const char *name,
					 const pa_buffer_attr *attr,
					 pa_stream_flags_t flags)
{
	if (FUNC4() < 0)
		return -1;

	size_t dev_len = FUNC7(name) - 8;
	char *device = FUNC1(dev_len + 1);
	FUNC2(device, name, dev_len);

	FUNC5();
	int_fast32_t ret =
		FUNC3(s, device, attr, flags, NULL, NULL);
	FUNC6();

	FUNC0(device);
	return ret;
}