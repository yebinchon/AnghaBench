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
struct dstr {int /*<<< orphan*/  array; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  obs_encoder_t ;
typedef  int /*<<< orphan*/  obs_data_t ;
typedef  int /*<<< orphan*/  audio_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct dstr*,char*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct dstr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dstr*) ; 
 int /*<<< orphan*/  FUNC4 (struct dstr*,char*,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 () ; 

__attribute__((used)) static void FUNC11(struct dstr *cmd, obs_encoder_t *aencoder)
{
	obs_data_t *settings = FUNC9(aencoder);
	int bitrate = (int)FUNC5(settings, "bitrate");
	audio_t *audio = FUNC10();
	struct dstr name = {0};

	FUNC6(settings);

	FUNC2(&name, FUNC7(aencoder));
	FUNC4(&name, "\"", "\"\"");

	FUNC1(cmd, "\"%s\" %d %d %d ", name.array, bitrate,
		  (int)FUNC8(aencoder),
		  (int)FUNC0(audio));

	FUNC3(&name);
}