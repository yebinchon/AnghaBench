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
struct audio_params {int /*<<< orphan*/  channels; int /*<<< orphan*/  sample_rate; int /*<<< orphan*/  abitrate; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,char***,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int*,char***,int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static bool FUNC2(struct audio_params *audio, int *argc,
			     char ***argv)
{
	if (!FUNC1(argc, argv, &audio->name, "audio track name"))
		return false;
	if (!FUNC0(argc, argv, &audio->abitrate, "audio bitrate"))
		return false;
	if (!FUNC0(argc, argv, &audio->sample_rate, "audio sample rate"))
		return false;
	if (!FUNC0(argc, argv, &audio->channels, "audio channels"))
		return false;
	return true;
}