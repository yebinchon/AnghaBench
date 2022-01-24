#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_7__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint64_t ;
typedef  int uint32_t ;
struct audio_monitor {int channels; int /*<<< orphan*/  playback_mutex; scalar_t__ source_has_video; TYPE_7__* client; int /*<<< orphan*/  resampler; TYPE_4__* render; } ;
struct audio_data {scalar_t__ timestamp; scalar_t__ frames; scalar_t__ data; } ;
struct TYPE_11__ {float user_volume; scalar_t__ async_decoupled; scalar_t__ async_unbuffered; int /*<<< orphan*/  activate_refs; } ;
typedef  TYPE_3__ obs_source_t ;
typedef  int /*<<< orphan*/  UINT32 ;
struct TYPE_13__ {TYPE_1__* lpVtbl; } ;
struct TYPE_12__ {TYPE_2__* lpVtbl; } ;
struct TYPE_10__ {int /*<<< orphan*/  (* ReleaseBuffer ) (TYPE_4__*,int,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* GetBuffer ) (TYPE_4__*,int,int /*<<< orphan*/ **) ;} ;
struct TYPE_9__ {int /*<<< orphan*/  (* GetCurrentPadding ) (TYPE_7__*,int /*<<< orphan*/ *) ;} ;
typedef  TYPE_4__ IAudioRenderClient ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  AUDCLNT_BUFFERFLAGS_SILENT ; 
 int /*<<< orphan*/  EPSILON ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int MAX_AV_PLANES ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int*,scalar_t__*,int /*<<< orphan*/  const* const*,int) ; 
 int /*<<< orphan*/  FUNC2 (float,float,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct audio_monitor*,float**,int*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_7__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(void *param, obs_source_t *source,
			      const struct audio_data *audio_data, bool muted)
{
	struct audio_monitor *monitor = param;
	IAudioRenderClient *render = monitor->render;
	uint8_t *resample_data[MAX_AV_PLANES];
	float vol = source->user_volume;
	uint32_t resample_frames;
	uint64_t ts_offset;
	bool success;
	BYTE *output;

	if (FUNC6(&monitor->playback_mutex) != 0) {
		return;
	}
	if (FUNC4(&source->activate_refs) == 0) {
		goto unlock;
	}

	success = FUNC1(
		monitor->resampler, resample_data, &resample_frames, &ts_offset,
		(const uint8_t *const *)audio_data->data,
		(uint32_t)audio_data->frames);
	if (!success) {
		goto unlock;
	}

	UINT32 pad = 0;
	monitor->client->lpVtbl->GetCurrentPadding(monitor->client, &pad);

	bool decouple_audio = source->async_unbuffered &&
			      source->async_decoupled;

	if (monitor->source_has_video && !decouple_audio) {
		uint64_t ts = audio_data->timestamp - ts_offset;

		if (!FUNC5(monitor, (float **)(&resample_data[0]),
					 &resample_frames, ts, pad)) {
			goto unlock;
		}
	}

	HRESULT hr =
		render->lpVtbl->GetBuffer(render, resample_frames, &output);
	if (FUNC0(hr)) {
		goto unlock;
	}

	if (!muted) {
		/* apply volume */
		if (!FUNC2(vol, 1.0f, EPSILON)) {
			register float *cur = (float *)resample_data[0];
			register float *end =
				cur + resample_frames * monitor->channels;

			while (cur < end)
				*(cur++) *= vol;
		}
		FUNC3(output, resample_data[0],
		       resample_frames * monitor->channels * sizeof(float));
	}

	render->lpVtbl->ReleaseBuffer(render, resample_frames,
				      muted ? AUDCLNT_BUFFERFLAGS_SILENT : 0);

unlock:
	FUNC7(&monitor->playback_mutex);
}