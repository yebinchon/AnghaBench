#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int speakers; } ;
struct TYPE_6__ {TYPE_1__ sample_info; } ;
typedef  TYPE_2__ obs_source_t ;
typedef  enum speaker_layout { ____Placeholder_speaker_layout } speaker_layout ;

/* Variables and functions */
 int SPEAKERS_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*) ; 

enum speaker_layout FUNC1(obs_source_t *source)
{
	if (!FUNC0(source, "obs_source_get_audio_channels"))
		return SPEAKERS_UNKNOWN;

	return source->sample_info.speakers;
}