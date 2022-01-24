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
struct subtitle_list {struct subtitle_list* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct subtitle_list*) ; 
 int /*<<< orphan*/  FUNC1 (struct subtitle_list*) ; 
 struct subtitle_list* subtitles ; 

__attribute__((used)) static void FUNC2(void)
{
	struct subtitle_list *pos, *tmp;

	for (pos = subtitles; pos != NULL; pos = tmp) {
		tmp = pos->next;
		FUNC0(pos);
	}
	subtitles = NULL;
	FUNC1(subtitles);
}