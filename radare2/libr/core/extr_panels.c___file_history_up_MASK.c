#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {TYPE_1__* io; } ;
struct TYPE_11__ {int /*<<< orphan*/  name; } ;
struct TYPE_9__ {int /*<<< orphan*/  data; int /*<<< orphan*/  length; int /*<<< orphan*/  index; } ;
struct TYPE_10__ {int file_hist_index; TYPE_2__ buffer; TYPE_5__* user; } ;
struct TYPE_8__ {int /*<<< orphan*/  files; } ;
typedef  int /*<<< orphan*/  RList ;
typedef  TYPE_3__ RLine ;
typedef  TYPE_4__ RIODesc ;
typedef  TYPE_5__ RCore ;

/* Variables and functions */
 scalar_t__ R_LINE_BUFSIZE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

int FUNC6(RLine *line) {
	RCore *core = line->user;
	RList *files = FUNC0 (core->io->files);
	int num_files = FUNC3 (files);
	if (line->file_hist_index >= num_files || line->file_hist_index < 0) {
		return false;
	}
	line->file_hist_index++;
	RIODesc *desc = FUNC2 (files, num_files - line->file_hist_index);
	if (desc) {
		FUNC5 (line->buffer.data, desc->name, R_LINE_BUFSIZE - 1);
		line->buffer.index = line->buffer.length = FUNC4 (line->buffer.data);
	}
	FUNC1 (files);
	return true;
}