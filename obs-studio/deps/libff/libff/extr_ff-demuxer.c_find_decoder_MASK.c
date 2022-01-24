#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ is_hw_decoding; } ;
struct ff_demuxer {TYPE_1__ options; } ;
struct TYPE_14__ {int refcounted_frames; scalar_t__ codec_id; int thread_count; TYPE_3__* opaque; int /*<<< orphan*/  get_format; } ;
struct TYPE_13__ {char* name; } ;
struct TYPE_12__ {TYPE_4__* codec; } ;
typedef  TYPE_2__ AVStream ;
typedef  TYPE_3__ AVHWAccel ;
typedef  int /*<<< orphan*/  AVGetFormatCb ;
typedef  int /*<<< orphan*/  AVDictionary ;
typedef  TYPE_4__ AVCodecContext ;
typedef  int /*<<< orphan*/  AVCodec ;

/* Variables and functions */
 scalar_t__ AV_CODEC_ID_JPEG2000 ; 
 scalar_t__ AV_CODEC_ID_PNG ; 
 scalar_t__ AV_CODEC_ID_TIFF ; 
 scalar_t__ AV_CODEC_ID_VP8 ; 
 scalar_t__ AV_CODEC_ID_VP9 ; 
 scalar_t__ AV_CODEC_ID_WEBP ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC2 (char*) ; 
 scalar_t__ FUNC3 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 TYPE_3__* FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  get_hwaccel_format ; 
 int FUNC5 (struct ff_demuxer*,TYPE_4__*,TYPE_2__*,int) ; 

__attribute__((used)) static bool FUNC6(struct ff_demuxer *demuxer, AVStream *stream)
{
	AVCodecContext *codec_context = NULL;
	AVCodec *codec = NULL;
	AVDictionary *options_dict = NULL;
	int ret;

	bool hwaccel_decoder = false;
	codec_context = stream->codec;

	// enable reference counted frames since we may have a buffer size
	// > 1
	codec_context->refcounted_frames = 1;

	// png/tiff decoders have serious issues with multiple threads
	if (codec_context->codec_id == AV_CODEC_ID_PNG ||
	    codec_context->codec_id == AV_CODEC_ID_TIFF ||
	    codec_context->codec_id == AV_CODEC_ID_JPEG2000 ||
	    codec_context->codec_id == AV_CODEC_ID_WEBP)
		codec_context->thread_count = 1;

	if (demuxer->options.is_hw_decoding) {
		AVHWAccel *hwaccel = FUNC4(codec_context);

		if (hwaccel) {
			AVCodec *codec_vda =
			        FUNC2(hwaccel->name);

			if (codec_vda != NULL) {
				AVGetFormatCb original_get_format =
				        codec_context->get_format;

				codec_context->get_format = get_hwaccel_format;
				codec_context->opaque = hwaccel;

				ret = FUNC3(codec_context, codec_vda,
				                    &options_dict);
				if (ret < 0) {
					FUNC0(NULL, AV_LOG_WARNING,
					       "no hardware decoder found for"
					       " codec with id %d",
					       codec_context->codec_id);
					codec_context->get_format =
					        original_get_format;
					codec_context->opaque = NULL;
				} else {
					codec = codec_vda;
					hwaccel_decoder = true;
				}
			}
		}
	}

	if (codec == NULL) {
		if (codec_context->codec_id == AV_CODEC_ID_VP8)
			codec = FUNC2("libvpx");
		else if (codec_context->codec_id == AV_CODEC_ID_VP9)
			codec = FUNC2("libvpx-vp9");

		if (!codec)
			codec = FUNC1(codec_context->codec_id);
		if (codec == NULL) {
			FUNC0(NULL, AV_LOG_WARNING,
			       "no decoder found for"
			       " codec with id %d",
			       codec_context->codec_id);
			return false;
		}
		if (FUNC3(codec_context, codec, &options_dict) < 0) {
			FUNC0(NULL, AV_LOG_WARNING,
			       "unable to open decoder"
			       " with codec id %d",
			       codec_context->codec_id);
			return false;
		}
	}

	return FUNC5(demuxer, codec_context, stream,
	                          hwaccel_decoder);
}