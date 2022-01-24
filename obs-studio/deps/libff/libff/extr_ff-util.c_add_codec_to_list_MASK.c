#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ff_format_desc {int /*<<< orphan*/  codec_tags; } ;
struct ff_codec_desc {int id; int alias; struct ff_codec_desc* next; int /*<<< orphan*/  type; int /*<<< orphan*/  base_name; int /*<<< orphan*/  long_name; int /*<<< orphan*/  name; } ;
typedef  enum AVCodecID { ____Placeholder_AVCodecID } AVCodecID ;
struct TYPE_4__ {int id; int type; int /*<<< orphan*/  name; int /*<<< orphan*/  long_name; } ;
typedef  TYPE_1__ AVCodec ;

/* Variables and functions */
#define  AVMEDIA_TYPE_AUDIO 129 
#define  AVMEDIA_TYPE_VIDEO 128 
 int /*<<< orphan*/  FF_CODEC_AUDIO ; 
 int /*<<< orphan*/  FF_CODEC_UNKNOWN ; 
 int /*<<< orphan*/  FF_CODEC_VIDEO ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__ const*) ; 
 struct ff_codec_desc* FUNC2 (int) ; 
 void* FUNC3 (int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(const struct ff_format_desc *format_desc,
                              struct ff_codec_desc **first,
                              struct ff_codec_desc **current, enum AVCodecID id,
                              const AVCodec *codec, bool ignore_compatability)
{
	if (codec == NULL)
		codec = FUNC3(id);

	// No codec, or invalid id
	if (codec == NULL)
		return;

	// Not an encoding codec
	if (!FUNC1(codec))
		return;

	if (!ignore_compatability) {
		// Format doesn't support this codec
		unsigned int tag =
		        FUNC0(format_desc->codec_tags, codec->id);
		if (tag == 0)
			return;
	}

	struct ff_codec_desc *d = FUNC2(sizeof(struct ff_codec_desc));

	d->name = codec->name;
	d->long_name = codec->long_name;
	d->id = codec->id;
	AVCodec *base_codec = FUNC3(codec->id);
	if (FUNC4(base_codec->name, codec->name) != 0) {
		d->alias = true;
		d->base_name = base_codec->name;
	}

	switch (codec->type) {
	case AVMEDIA_TYPE_AUDIO:
		d->type = FF_CODEC_AUDIO;
		break;
	case AVMEDIA_TYPE_VIDEO:
		d->type = FF_CODEC_VIDEO;
		break;
	default:
		d->type = FF_CODEC_UNKNOWN;
	}

	if (*current != NULL)
		(*current)->next = d;
	else
		*first = d;

	*current = d;
}