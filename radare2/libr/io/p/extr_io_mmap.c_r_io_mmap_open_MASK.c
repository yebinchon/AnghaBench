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
struct TYPE_4__ {int /*<<< orphan*/  filename; } ;
typedef  TYPE_1__ RIOMMapFileObj ;
typedef  int /*<<< orphan*/  RIODesc ;
typedef  int /*<<< orphan*/  RIO ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,char const*,int,int) ; 
 int /*<<< orphan*/  r_io_plugin_mmap ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*,int) ; 

__attribute__((used)) static RIODesc *FUNC3(RIO *io, const char *file, int flags, int mode) {
	if (!FUNC2 (file, "mmap://", 7)) {
		file += 7;
	}
	RIOMMapFileObj *mmo = FUNC1 (io, file, mode, flags);
	return mmo? FUNC0 (io, &r_io_plugin_mmap, mmo->filename, flags, mode, mmo): NULL;
}