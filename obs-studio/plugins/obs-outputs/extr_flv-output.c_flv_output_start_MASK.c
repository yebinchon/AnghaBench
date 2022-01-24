#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  array; } ;
struct flv_output {int got_first_video; int sent_headers; TYPE_1__ path; int /*<<< orphan*/  output; int /*<<< orphan*/  active; int /*<<< orphan*/  file; int /*<<< orphan*/  stopping; } ;
typedef  int /*<<< orphan*/  obs_data_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC11(void *data)
{
	struct flv_output *stream = data;
	obs_data_t *settings;
	const char *path;

	if (!FUNC5(stream->output, 0))
		return false;
	if (!FUNC7(stream->output, 0))
		return false;

	stream->got_first_video = false;
	stream->sent_headers = false;
	FUNC8(&stream->stopping, false);

	/* get path */
	settings = FUNC6(stream->output);
	path = FUNC2(settings, "path");
	FUNC0(&stream->path, path);
	FUNC3(settings);

	stream->file = FUNC9(stream->path.array, "wb");
	if (!stream->file) {
		FUNC10("Unable to open FLV file '%s'", stream->path.array);
		return false;
	}

	/* write headers and start capture */
	FUNC8(&stream->active, true);
	FUNC4(stream->output, 0);

	FUNC1("Writing FLV file '%s'...", stream->path.array);
	return true;
}