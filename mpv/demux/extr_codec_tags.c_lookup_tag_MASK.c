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
typedef  int /*<<< orphan*/  uint32_t ;
struct AVCodecTag {int dummy; } ;

/* Variables and functions */
 int AV_CODEC_ID_NONE ; 
#define  STREAM_AUDIO 129 
#define  STREAM_VIDEO 128 
 int FUNC0 (struct AVCodecTag const**,int /*<<< orphan*/ ) ; 
 struct AVCodecTag* FUNC1 () ; 
 struct AVCodecTag* FUNC2 () ; 
 struct AVCodecTag* FUNC3 () ; 
 struct AVCodecTag* FUNC4 () ; 
 char const* FUNC5 (int) ; 

__attribute__((used)) static const char *FUNC6(int type, uint32_t tag)
{
    const struct AVCodecTag *av_tags[3] = {0};
    switch (type) {
    case STREAM_VIDEO: {
        av_tags[0] = FUNC4();
#if HAVE_QT_TAGS
        av_tags[1] = avformat_get_mov_video_tags();
#endif
        break;
    }
    case STREAM_AUDIO: {
        av_tags[0] = FUNC3();
#if HAVE_QT_TAGS
        av_tags[1] = avformat_get_mov_audio_tags();
#endif
        break;
    }
    }

    int id = FUNC0(av_tags, tag);
    return id == AV_CODEC_ID_NONE ? NULL : FUNC5(id);
}