#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct ffmpeg_mux {TYPE_5__* output; } ;
typedef  enum AVCodecID { ____Placeholder_AVCodecID } AVCodecID ;
struct TYPE_9__ {scalar_t__ nb_streams; } ;
struct TYPE_8__ {int id; } ;
struct TYPE_7__ {scalar_t__ id; } ;
typedef  TYPE_1__ AVStream ;
typedef  TYPE_2__ AVCodecDescriptor ;
typedef  int /*<<< orphan*/  AVCodec ;

/* Variables and functions */
 TYPE_2__* FUNC0 (char const*) ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 TYPE_1__* FUNC2 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static bool FUNC4(struct ffmpeg_mux *ffm, AVStream **stream,
		       const char *name, enum AVCodecID *id)
{
	const AVCodecDescriptor *desc = FUNC0(name);
	AVCodec *codec;

	if (!desc) {
		FUNC3(stderr, "Couldn't find encoder '%s'\n", name);
		return false;
	}

	*id = desc->id;

	codec = FUNC1(desc->id);
	if (!codec) {
		FUNC3(stderr, "Couldn't create encoder");
		return false;
	}

	*stream = FUNC2(ffm->output, codec);
	if (!*stream) {
		FUNC3(stderr, "Couldn't create stream for encoder '%s'\n",
			name);
		return false;
	}

	(*stream)->id = ffm->output->nb_streams - 1;
	return true;
}