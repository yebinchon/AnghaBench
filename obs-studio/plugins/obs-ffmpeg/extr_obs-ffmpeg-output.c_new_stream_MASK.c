#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct ffmpeg_data {TYPE_4__* output; } ;
typedef  enum AVCodecID { ____Placeholder_AVCodecID } AVCodecID ;
struct TYPE_6__ {scalar_t__ nb_streams; } ;
struct TYPE_5__ {scalar_t__ id; } ;
typedef  TYPE_1__ AVStream ;
typedef  int /*<<< orphan*/  AVCodec ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_WARNING ; 
 int /*<<< orphan*/ * FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 TYPE_1__* FUNC3 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct ffmpeg_data*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC5(struct ffmpeg_data *data, AVStream **stream,
		       AVCodec **codec, enum AVCodecID id, const char *name)
{
	*codec = (!!name && *name) ? FUNC1(name)
				   : FUNC0(id);

	if (!*codec) {
		FUNC4(LOG_WARNING, data,
				 "Couldn't find encoder '%s'",
				 FUNC2(id));
		return false;
	}

	*stream = FUNC3(data->output, *codec);
	if (!*stream) {
		FUNC4(LOG_WARNING, data,
				 "Couldn't create stream for encoder '%s'",
				 FUNC2(id));
		return false;
	}

	(*stream)->id = data->output->nb_streams - 1;
	return true;
}