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
struct ffmpeg_muxer {int /*<<< orphan*/  output; } ;
struct dstr {char* array; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  obs_data_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dstr*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct dstr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dstr*) ; 
 int /*<<< orphan*/  FUNC3 (struct dstr*,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct ffmpeg_muxer*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct dstr *cmd, struct ffmpeg_muxer *stream)
{
	obs_data_t *settings = FUNC7(stream->output);
	struct dstr mux = {0};

	FUNC1(&mux, FUNC5(settings, "muxer_settings"));

	FUNC4(stream, mux.array);

	FUNC3(&mux, "\"", "\\\"");
	FUNC6(settings);

	FUNC0(cmd, "\"%s\" ", mux.array ? mux.array : "");

	FUNC2(&mux);
}