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
struct alsa_data {int channels; int period_size; int sample_size; scalar_t__ buffer; int /*<<< orphan*/  format; int /*<<< orphan*/  handle; int /*<<< orphan*/  device; int /*<<< orphan*/  rate; } ;
typedef  int /*<<< orphan*/  snd_pcm_hw_params_t ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERROR ; 
 int /*<<< orphan*/  LOG_INFO ; 
 int /*<<< orphan*/  SND_PCM_ACCESS_RW_INTERLEAVED ; 
 int /*<<< orphan*/  SND_PCM_FORMAT_S16 ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int*) ; 
 int FUNC8 (int /*<<< orphan*/ *,int*,int*) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 

bool FUNC14(struct alsa_data *data)
{
	snd_pcm_hw_params_t *hwparams;
	int err;
	int dir;

	FUNC5(&hwparams);

	err = FUNC6(data->handle, hwparams);
	if (err < 0) {
		FUNC1(LOG_ERROR, "snd_pcm_hw_params_any failed: %s",
		     FUNC13(err));
		return false;
	}

	err = FUNC9(data->handle, hwparams,
					   SND_PCM_ACCESS_RW_INTERLEAVED);
	if (err < 0) {
		FUNC1(LOG_ERROR, "snd_pcm_hw_params_set_access failed: %s",
		     FUNC13(err));
		return false;
	}

	data->format = SND_PCM_FORMAT_S16;
	err = FUNC11(data->handle, hwparams,
					   data->format);
	if (err < 0) {
		FUNC1(LOG_ERROR, "snd_pcm_hw_params_set_format failed: %s",
		     FUNC13(err));
		return false;
	}

	err = FUNC12(data->handle, hwparams,
					      &data->rate, 0);
	if (err < 0) {
		FUNC1(LOG_ERROR, "snd_pcm_hw_params_set_rate_near failed: %s",
		     FUNC13(err));
		return false;
	}
	FUNC1(LOG_INFO, "PCM '%s' rate set to %d", data->device, data->rate);

	err = FUNC7(hwparams, &data->channels);
	if (err < 0)
		data->channels = 2;

	err = FUNC10(data->handle, hwparams,
						  &data->channels);
	if (err < 0) {
		FUNC1(LOG_ERROR,
		     "snd_pcm_hw_params_set_channels_near failed: %s",
		     FUNC13(err));
		return false;
	}
	FUNC1(LOG_INFO, "PCM '%s' channels set to %d", data->device,
	     data->channels);

	err = FUNC4(data->handle, hwparams);
	if (err < 0) {
		FUNC1(LOG_ERROR, "snd_pcm_hw_params failed: %s",
		     FUNC13(err));
		return false;
	}

	err = FUNC8(hwparams, &data->period_size,
						&dir);
	if (err < 0) {
		FUNC1(LOG_ERROR, "snd_pcm_hw_params_get_period_size failed: %s",
		     FUNC13(err));
		return false;
	}

	data->sample_size =
		(data->channels * FUNC3(data->format)) /
		8;

	if (data->buffer)
		FUNC0(data->buffer);
	data->buffer = FUNC2(data->period_size * data->sample_size);

	return true;
}