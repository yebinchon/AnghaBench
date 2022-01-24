#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * cue_head; int /*<<< orphan*/ * style_head; int /*<<< orphan*/ * region_head; } ;
typedef  TYPE_1__ vtt_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 void* FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(vtt_t* vtt)
{
    while (vtt->region_head != NULL) {
        vtt->region_head = FUNC1(vtt->region_head);
    }
    while (vtt->style_head != NULL) {
        vtt->style_head = FUNC1(vtt->style_head);
    }
    while (vtt->cue_head != NULL) {
        vtt->cue_head = FUNC1(vtt->cue_head);
    }
    FUNC0(vtt);
}