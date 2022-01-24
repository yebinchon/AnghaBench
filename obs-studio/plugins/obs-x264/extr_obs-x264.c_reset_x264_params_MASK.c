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
struct obs_x264 {int /*<<< orphan*/  params; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct obs_x264*,char const*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct obs_x264*,char const*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  x264_tune_names ; 

__attribute__((used)) static bool FUNC3(struct obs_x264 *obsx264, const char *preset,
			      const char *tune)
{
	int ret = FUNC2(
		&obsx264->params, FUNC1(obsx264, preset),
		FUNC0(obsx264, tune, "tune", x264_tune_names));
	return ret == 0;
}