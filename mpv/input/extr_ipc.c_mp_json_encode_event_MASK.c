#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * list; } ;
struct TYPE_6__ {TYPE_1__ u; int /*<<< orphan*/  format; } ;
typedef  TYPE_2__ mpv_node ;
typedef  int /*<<< orphan*/  mpv_event ;

/* Variables and functions */
 int /*<<< orphan*/  MPV_FORMAT_NODE_MAP ; 
 int /*<<< orphan*/  FUNC0 (char**,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ *,TYPE_2__*) ; 
 char* FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 void* FUNC4 (int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/ *,char*) ; 

char *FUNC6(mpv_event *event)
{
    void *ta_parent = FUNC4(NULL);
    mpv_node event_node = {.format = MPV_FORMAT_NODE_MAP, .u.list = NULL};

    FUNC1(ta_parent, event, &event_node);

    char *output = FUNC5(NULL, "");
    FUNC0(&output, &event_node);
    output = FUNC2(output, "\n");

    FUNC3(ta_parent);

    return output;
}