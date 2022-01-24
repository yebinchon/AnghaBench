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
typedef  int uint64_t ;
struct compressor_data {int sidechain_check_time; int /*<<< orphan*/  sidechain_update_mutex; int /*<<< orphan*/ * weak_sidechain; scalar_t__ sidechain_name; } ;
typedef  int /*<<< orphan*/  obs_weak_source_t ;
typedef  int /*<<< orphan*/  obs_source_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (float) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct compressor_data*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sidechain_capture ; 
 scalar_t__ FUNC11 (scalar_t__,char*) ; 

__attribute__((used)) static void FUNC12(void *data, float seconds)
{
	struct compressor_data *cd = data;
	char *new_name = NULL;

	FUNC9(&cd->sidechain_update_mutex);

	if (cd->sidechain_name && !cd->weak_sidechain) {
		uint64_t t = FUNC8();

		if (t - cd->sidechain_check_time > 3000000000) {
			new_name = FUNC2(cd->sidechain_name);
			cd->sidechain_check_time = t;
		}
	}

	FUNC10(&cd->sidechain_update_mutex);

	if (new_name) {
		obs_source_t *sidechain =
			new_name && *new_name ? FUNC3(new_name)
					      : NULL;
		obs_weak_source_t *weak_sidechain =
			sidechain ? FUNC5(sidechain)
				  : NULL;

		FUNC9(&cd->sidechain_update_mutex);

		if (cd->sidechain_name &&
		    FUNC11(cd->sidechain_name, new_name) == 0) {
			cd->weak_sidechain = weak_sidechain;
			weak_sidechain = NULL;
		}

		FUNC10(&cd->sidechain_update_mutex);

		if (sidechain) {
			FUNC4(
				sidechain, sidechain_capture, cd);

			FUNC7(weak_sidechain);
			FUNC6(sidechain);
		}

		FUNC1(new_name);
	}

	FUNC0(seconds);
}