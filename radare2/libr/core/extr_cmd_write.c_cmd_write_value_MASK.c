#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ut8 ;
typedef  scalar_t__ ut64 ;
typedef  int /*<<< orphan*/  ut32 ;
typedef  int /*<<< orphan*/  ut16 ;
struct TYPE_11__ {scalar_t__ value; } ;
struct TYPE_10__ {int /*<<< orphan*/  io; int /*<<< orphan*/  offset; TYPE_1__* file; TYPE_3__* num; int /*<<< orphan*/  config; } ;
struct TYPE_9__ {int /*<<< orphan*/  fd; } ;
typedef  TYPE_2__ RCore ;

/* Variables and functions */
 int /*<<< orphan*/  R_IO_SEEK_SET ; 
 scalar_t__ UT16_MAX ; 
 scalar_t__ UT32_MAX ; 
 scalar_t__ UT64_32U ; 
 scalar_t__ UT64_MAX ; 
 scalar_t__ UT8_MAX ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  help_msg_wv ; 
 int FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC8 (TYPE_3__*,char const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC13 (RCore *core, const char *input) {
	int type = 0;
	ut64 off = 0LL;
	ut8 buf[sizeof(ut64)];
	int wseek = FUNC2 (core->config, "cfg.wseek");
	bool be = FUNC2 (core->config, "cfg.bigendian");

	core->num->value = 0;
	if (!input) {
		return;
	}

	if (input[0])
	switch (input[1]) {
	case '?':
		FUNC4 (core, help_msg_wv);
		return;
	case '1': type = 1; break;
	case '2': type = 2; break;
	case '4': type = 4; break;
	case '8': type = 8; break;
	}
	if (input && input[0] && input[1] && input[2]) {
		off = FUNC8 (core->num, input+2);
	}
	if (core->file) {
		FUNC6 (core->io, core->file->fd);
	}
	ut64 res = FUNC5 (core->io, core->offset, R_IO_SEEK_SET);
	if (res == UT64_MAX) return;
	if (type == 0)
		type = (off&UT64_32U)? 8: 4;
	switch (type) {
	case 1:
		FUNC12 (buf, (ut8)(off & UT8_MAX));
		if (!FUNC7 (core->io, buf, 1)) {
			FUNC1 (core);
		} else {
			FUNC0 (core, 1);
		}
		break;
	case 2:
		FUNC9 (buf, (ut16)(off & UT16_MAX), be);
		if (!FUNC7 (core->io, buf, 2)) {
			FUNC1 (core);
		} else {
			FUNC0 (core, 2);
		}
		break;
	case 4:
		FUNC10 (buf, (ut32)(off & UT32_MAX), be);
		if (!FUNC7 (core->io, buf, 4)) {
			FUNC1 (core);
		} else {
			FUNC0 (core, 4);
		}
		break;
	case 8:
		FUNC11 (buf, off, be);
		if (!FUNC7 (core->io, buf, 8)) {
			FUNC1 (core);
		} else {
			FUNC0 (core, 8);
		}
		break;
	}
	FUNC3 (core);
}