#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int /*<<< orphan*/  maps; int /*<<< orphan*/  va; } ;
struct TYPE_15__ {TYPE_2__* print; int /*<<< orphan*/  offset; TYPE_6__* io; int /*<<< orphan*/  config; } ;
struct TYPE_14__ {int /*<<< orphan*/  itv; } ;
struct TYPE_12__ {int /*<<< orphan*/  (* get_size ) (int*) ;} ;
struct TYPE_13__ {TYPE_1__ consbind; } ;
typedef  int /*<<< orphan*/  SdbListIter ;
typedef  TYPE_2__ RPrint ;
typedef  TYPE_3__ RIOMap ;
typedef  TYPE_4__ RCore ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 TYPE_3__* FUNC5 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (int*) ; 

__attribute__((used)) static bool FUNC11 (RCore *core, int ch) {
	RIOMap *map;
	int ret = -1;
	switch (ch) {
	case 'g':
		if (core->io->va) {
			RIOMap *map = FUNC5 (core->io, core->offset);
			if (!map) {
				SdbListIter *i = FUNC2 (core->io->maps);
				if (i) {
					map = FUNC1 (i);
				}
			}
			if (map) {
				FUNC4 (core, FUNC7 (map->itv), 1);
			}
		} else {
			FUNC4 (core, 0, 1);
		}
		FUNC6 (core->io, core->offset, FUNC9 (core->print));
		return true;
	case 'G':
		map = FUNC5 (core->io, core->offset);
		if (!map) {
			SdbListIter *i = FUNC0 (core->io->maps);
			if (i) {
				map = FUNC1 (i);
			}
		}
		if (map) {
			RPrint *p = core->print;
			int scr_rows;
			if (!p->consbind.get_size) {
				break;
			}
			(void)p->consbind.get_size (&scr_rows);
			int scols = FUNC3 (core->config, "hex.cols");
			ret = FUNC4 (core, FUNC8 (map->itv) - (scr_rows - 2) * scols, 1);
		}
		if (ret != -1) {
			FUNC6 (core->io, core->offset, FUNC9 (core->print));
		}
		return true;
	}
	return false;
}