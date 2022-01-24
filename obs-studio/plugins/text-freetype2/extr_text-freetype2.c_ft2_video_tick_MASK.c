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
typedef  scalar_t__ time_t ;
struct ft2_source {int last_checked; int update_file; scalar_t__ m_timestamp; int /*<<< orphan*/  text; int /*<<< orphan*/  text_file; scalar_t__ log_mode; int /*<<< orphan*/  from_file; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (float) ; 
 int /*<<< orphan*/  FUNC1 (struct ft2_source*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ft2_source*,int /*<<< orphan*/ ) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct ft2_source*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ft2_source*) ; 

__attribute__((used)) static void FUNC7(void *data, float seconds)
{
	struct ft2_source *srcdata = data;
	if (srcdata == NULL)
		return;
	if (!srcdata->from_file || !srcdata->text_file)
		return;

	if (FUNC4() - srcdata->last_checked >= 1000000000) {
		time_t t = FUNC2(srcdata->text_file);
		srcdata->last_checked = FUNC4();

		if (srcdata->update_file) {
			if (srcdata->log_mode)
				FUNC5(srcdata, srcdata->text_file);
			else
				FUNC3(srcdata,
						    srcdata->text_file);
			FUNC1(srcdata, srcdata->text);
			FUNC6(srcdata);
			srcdata->update_file = false;
		}

		if (srcdata->m_timestamp != t) {
			srcdata->m_timestamp = t;
			srcdata->update_file = true;
		}
	}

	FUNC0(seconds);
}