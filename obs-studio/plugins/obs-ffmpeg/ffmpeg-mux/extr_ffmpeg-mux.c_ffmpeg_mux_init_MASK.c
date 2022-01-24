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
struct ffmpeg_mux {int initialized; } ;

/* Variables and functions */
 int FFM_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (struct ffmpeg_mux*) ; 
 int FUNC1 (struct ffmpeg_mux*,int,char**) ; 

__attribute__((used)) static int FUNC2(struct ffmpeg_mux *ffm, int argc, char *argv[])
{
	int ret = FUNC1(ffm, argc, argv);
	if (ret != FFM_SUCCESS) {
		FUNC0(ffm);
		return ret;
	}

	ffm->initialized = true;
	return ret;
}