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
struct compressor_data {struct compressor_data* envelope_buf; struct compressor_data* sidechain_name; int /*<<< orphan*/  sidechain_update_mutex; int /*<<< orphan*/  sidechain_mutex; struct compressor_data** sidechain_buf; int /*<<< orphan*/ * sidechain_data; scalar_t__ weak_sidechain; } ;
typedef  int /*<<< orphan*/  obs_source_t ;

/* Variables and functions */
 size_t MAX_AUDIO_CHANNELS ; 
 int /*<<< orphan*/  FUNC0 (struct compressor_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (struct compressor_data*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct compressor_data*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sidechain_capture ; 

__attribute__((used)) static void FUNC7(void *data)
{
	struct compressor_data *cd = data;

	if (cd->weak_sidechain) {
		obs_source_t *sidechain = FUNC2(cd);
		if (sidechain) {
			FUNC4(
				sidechain, sidechain_capture, cd);
			FUNC3(sidechain);
		}

		FUNC5(cd->weak_sidechain);
	}

	for (size_t i = 0; i < MAX_AUDIO_CHANNELS; i++) {
		FUNC1(&cd->sidechain_data[i]);
		FUNC0(cd->sidechain_buf[i]);
	}
	FUNC6(&cd->sidechain_mutex);
	FUNC6(&cd->sidechain_update_mutex);

	FUNC0(cd->sidechain_name);
	FUNC0(cd->envelope_buf);
	FUNC0(cd);
}