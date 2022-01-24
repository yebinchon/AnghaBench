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
struct luma_wipe_info {float softness; int /*<<< orphan*/  luma_image; int /*<<< orphan*/  invert_luma; } ;
struct dstr {int /*<<< orphan*/  array; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  obs_data_t ;

/* Variables and functions */
 int /*<<< orphan*/  S_LUMA_IMG ; 
 int /*<<< orphan*/  S_LUMA_INV ; 
 int /*<<< orphan*/  S_LUMA_SOFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct dstr*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct dstr*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct dstr*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 char* FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC14(void *data, obs_data_t *settings)
{
	struct luma_wipe_info *lwipe = data;

	const char *name = FUNC10(settings, S_LUMA_IMG);
	lwipe->invert_luma = FUNC8(settings, S_LUMA_INV);
	lwipe->softness = (float)FUNC9(settings, S_LUMA_SOFT);

	struct dstr path = {0};

	FUNC3(&path, "luma_wipes/");
	FUNC2(&path, name);

	char *file = FUNC13(path.array);

	FUNC11();
	FUNC5(&lwipe->luma_image);
	FUNC12();

	FUNC6(&lwipe->luma_image, file);

	FUNC11();
	FUNC7(&lwipe->luma_image);
	FUNC12();

	FUNC1(file);
	FUNC4(&path);

	FUNC0(settings);
}