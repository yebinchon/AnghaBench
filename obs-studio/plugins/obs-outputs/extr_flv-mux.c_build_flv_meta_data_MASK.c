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
typedef  int /*<<< orphan*/  video_t ;
typedef  int /*<<< orphan*/  uint8_t ;
struct dstr {char* array; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  obs_output_t ;
typedef  int /*<<< orphan*/  obs_encoder_t ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  audio_t ;

/* Variables and functions */
 int /*<<< orphan*/  AMF_ECMA_ARRAY ; 
 char* FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  AMF_OBJECT_END ; 
 int /*<<< orphan*/  LIBOBS_API_MAJOR_VER ; 
 int /*<<< orphan*/  LIBOBS_API_MINOR_VER ; 
 int /*<<< orphan*/  LIBOBS_API_PATCH_VER ; 
 int /*<<< orphan*/  MODULE_NAME ; 
 char* OBS_VERSION ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct dstr*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct dstr*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct dstr*) ; 
 int /*<<< orphan*/  FUNC6 (struct dstr*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char**,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (char**,char*,char*,double) ; 
 int /*<<< orphan*/  FUNC9 (char**,char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (char**,char*,char*,char*) ; 
 double FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC17 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/ * FUNC18 (int /*<<< orphan*/ *) ; 
 double FUNC19 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC20(obs_output_t *context, uint8_t **output,
				size_t *size, size_t a_idx)
{
	obs_encoder_t *vencoder = FUNC18(context);
	obs_encoder_t *aencoder = FUNC17(context, a_idx);
	video_t *video = FUNC16(vencoder);
	audio_t *audio = FUNC12(aencoder);
	char buf[4096];
	char *enc = buf;
	char *end = enc + sizeof(buf);
	struct dstr encoder_name = {0};

	if (a_idx > 0 && !aencoder)
		return false;

	FUNC9(&enc, end, "onMetaData");

	*enc++ = AMF_ECMA_ARRAY;
	enc = FUNC0(enc, end, a_idx == 0 ? 20 : 15);

	FUNC8(&enc, end, "duration", 0.0);
	FUNC8(&enc, end, "fileSize", 0.0);

	if (a_idx == 0) {
		FUNC8(&enc, end, "width",
			    (double)FUNC15(vencoder));
		FUNC8(&enc, end, "height",
			    (double)FUNC13(vencoder));

		FUNC10(&enc, end, "videocodecid", "avc1");
		FUNC8(&enc, end, "videodatarate",
			    FUNC11(vencoder));
		FUNC8(&enc, end, "framerate",
			    FUNC19(video));
	}

	FUNC10(&enc, end, "audiocodecid", "mp4a");
	FUNC8(&enc, end, "audiodatarate", FUNC11(aencoder));
	FUNC8(&enc, end, "audiosamplerate",
		    (double)FUNC14(aencoder));
	FUNC8(&enc, end, "audiosamplesize", 16.0);
	FUNC8(&enc, end, "audiochannels",
		    (double)FUNC1(audio));

	FUNC7(&enc, end, "stereo",
		     FUNC1(audio) == 2);
	FUNC7(&enc, end, "2.1", FUNC1(audio) == 3);
	FUNC7(&enc, end, "3.1", FUNC1(audio) == 4);
	FUNC7(&enc, end, "4.0", FUNC1(audio) == 4);
	FUNC7(&enc, end, "4.1", FUNC1(audio) == 5);
	FUNC7(&enc, end, "5.1", FUNC1(audio) == 6);
	FUNC7(&enc, end, "7.1", FUNC1(audio) == 8);

	FUNC6(&encoder_name, "%s (libobs version ", MODULE_NAME);

#ifdef HAVE_OBSCONFIG_H
	dstr_cat(&encoder_name, OBS_VERSION);
#else
	FUNC4(&encoder_name, "%d.%d.%d", LIBOBS_API_MAJOR_VER,
		  LIBOBS_API_MINOR_VER, LIBOBS_API_PATCH_VER);
#endif

	FUNC3(&encoder_name, ")");

	FUNC10(&enc, end, "encoder", encoder_name.array);
	FUNC5(&encoder_name);

	*enc++ = 0;
	*enc++ = 0;
	*enc++ = AMF_OBJECT_END;

	*size = enc - buf;
	*output = FUNC2(buf, *size);
	return true;
}