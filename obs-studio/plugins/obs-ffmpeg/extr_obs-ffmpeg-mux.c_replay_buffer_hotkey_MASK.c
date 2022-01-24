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
struct ffmpeg_muxer {long long save_ts; int /*<<< orphan*/  output; int /*<<< orphan*/  active; } ;
typedef  int /*<<< orphan*/  obs_hotkey_t ;
typedef  int obs_hotkey_id ;
typedef  int /*<<< orphan*/  obs_encoder_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 long long FUNC5 () ; 

__attribute__((used)) static void FUNC6(void *data, obs_hotkey_id id,
				 obs_hotkey_t *hotkey, bool pressed)
{
	FUNC0(id);
	FUNC0(*hotkey);
	FUNC0(pressed);

	if (!pressed)
		return;

	struct ffmpeg_muxer *stream = data;

	if (FUNC4(&stream->active)) {
		obs_encoder_t *vencoder =
			FUNC3(stream->output);
		if (FUNC2(vencoder)) {
			FUNC1("Could not save buffer because encoders paused");
			return;
		}

		stream->save_ts = FUNC5() / 1000LL;
	}
}