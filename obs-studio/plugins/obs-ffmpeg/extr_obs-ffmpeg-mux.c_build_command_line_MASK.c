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
struct ffmpeg_muxer {int /*<<< orphan*/  path; int /*<<< orphan*/  output; } ;
struct dstr {int dummy; } ;
typedef  int /*<<< orphan*/  obs_encoder_t ;

/* Variables and functions */
 int /*<<< orphan*/  FFMPEG_MUX ; 
 int MAX_AUDIO_MIXES ; 
 int /*<<< orphan*/  FUNC0 (struct dstr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct dstr*,struct ffmpeg_muxer*) ; 
 int /*<<< orphan*/  FUNC2 (struct ffmpeg_muxer*,struct dstr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct dstr*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct dstr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct dstr*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC7 (struct dstr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct dstr*,int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC13(struct ffmpeg_muxer *stream, struct dstr *cmd,
			       const char *path)
{
	obs_encoder_t *vencoder = FUNC11(stream->output);
	obs_encoder_t *aencoders[MAX_AUDIO_MIXES];
	int num_tracks = 0;

	for (;;) {
		obs_encoder_t *aencoder = FUNC10(
			stream->output, num_tracks);
		if (!aencoder)
			break;

		aencoders[num_tracks] = aencoder;
		num_tracks++;
	}

	FUNC7(cmd, FUNC12(FFMPEG_MUX));
	FUNC8(cmd, 0, '\"');
	FUNC3(cmd, "\" \"");

	FUNC6(&stream->path, path);
	FUNC9(&stream->path, "\"", "\"\"");
	FUNC4(cmd, &stream->path);

	FUNC5(cmd, "\" %d %d ", vencoder ? 1 : 0, num_tracks);

	if (vencoder)
		FUNC2(stream, cmd, vencoder);

	if (num_tracks) {
		FUNC3(cmd, "aac ");

		for (int i = 0; i < num_tracks; i++) {
			FUNC0(cmd, aencoders[i]);
		}
	}

	FUNC1(cmd, stream);
}