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
struct input_ctx {int dummy; } ;
typedef  enum mp_dnd_action { ____Placeholder_mp_dnd_action } mp_dnd_action ;

/* Variables and functions */
 int DND_REPLACE ; 
 int /*<<< orphan*/  FUNC0 (struct input_ctx*,char const**) ; 
 int FUNC1 (char*) ; 

void FUNC2(struct input_ctx *ictx, int num_files, char **files,
                         enum mp_dnd_action action)
{
    bool all_sub = true;
    for (int i = 0; i < num_files; i++)
        all_sub &= FUNC1(files[i]);

    if (all_sub) {
        for (int i = 0; i < num_files; i++) {
            const char *cmd[] = {
                "osd-auto",
                "sub-add",
                files[i],
                NULL
            };
            FUNC0(ictx, cmd);
        }
    } else {
        for (int i = 0; i < num_files; i++) {
            const char *cmd[] = {
                "osd-auto",
                "loadfile",
                files[i],
                /* Either start playing the dropped files right away
                   or add them to the end of the current playlist */
                (i == 0 && action == DND_REPLACE) ? "replace" : "append-play",
                NULL
            };
            FUNC0(ictx, cmd);
        }
    }
}