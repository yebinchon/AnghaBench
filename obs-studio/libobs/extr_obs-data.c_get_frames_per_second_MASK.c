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
typedef  void* uint32_t ;
struct obs_data_item {int dummy; } ;
struct media_frames_per_second {void* denominator; void* numerator; } ;
typedef  int /*<<< orphan*/  obs_data_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (long long,int /*<<< orphan*/ ,long long) ; 
 scalar_t__ UINT32_MAX ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char const**) ; 
 int FUNC2 (struct media_frames_per_second) ; 
 struct obs_data_item* FUNC3 (int /*<<< orphan*/ *,char*) ; 
 long long FUNC4 (struct obs_data_item*) ; 
 int /*<<< orphan*/  FUNC5 (struct obs_data_item**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline bool FUNC7(obs_data_t *data,
					 struct media_frames_per_second *fps,
					 const char **option)
{
	if (!data)
		return false;

	if (FUNC1(data, option))
		return true;

	if (!fps)
		goto free;

	struct obs_data_item *num = FUNC3(data, "numerator");
	struct obs_data_item *den = FUNC3(data, "denominator");
	if (!num || !den) {
		FUNC5(&num);
		FUNC5(&den);
		goto free;
	}

	long long num_ll = FUNC4(num);
	long long den_ll = FUNC4(den);

	fps->numerator = (uint32_t)FUNC0(num_ll, 0, (long long)UINT32_MAX);
	fps->denominator = (uint32_t)FUNC0(den_ll, 0, (long long)UINT32_MAX);

	FUNC5(&num);
	FUNC5(&den);

	FUNC6(data);

	return FUNC2(*fps);

free:
	FUNC6(data);
	return false;
}