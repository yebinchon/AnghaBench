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
typedef  int /*<<< orphan*/  eia608_style_t ;
struct TYPE_5__ {int /*<<< orphan*/  write; } ;
typedef  TYPE_1__ caption_frame_t ;
struct TYPE_6__ {int uln; int /*<<< orphan*/  sty; int /*<<< orphan*/ * data; } ;
typedef  TYPE_2__ caption_frame_cell_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char const*) ; 

int FUNC3(caption_frame_t* frame, int row, int col, eia608_style_t style, int underline, const char* c)
{
    if (!frame->write || !FUNC0(c)) {
        return 0;
    }

    caption_frame_cell_t* cell = FUNC1(frame->write, row, col);

    if (cell && FUNC2(&cell->data[0], c)) {
        cell->uln = underline;
        cell->sty = style;
        return 1;
    }

    return 0;
}