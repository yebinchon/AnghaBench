#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {char* name; } ;
struct TYPE_7__ {int /*<<< orphan*/  filename; } ;
typedef  TYPE_1__ RIOMMapFileObj ;
typedef  TYPE_2__ RIODesc ;
typedef  int /*<<< orphan*/  RIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,char const*,int,int) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,TYPE_1__*) ; 
 int /*<<< orphan*/  r_io_plugin_default ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (char*,char*) ; 
 void* FUNC5 (char const*) ; 
 int FUNC6 (char*) ; 

__attribute__((used)) static RIODesc *FUNC7(RIO *io, const char *file, int perm, int mode) {
	FUNC3 (io && file, NULL);
	RIOMMapFileObj *mmo = FUNC1 (io, file, perm, mode);
	if (!mmo) {
		return NULL;
	}
	RIODesc *d = FUNC2 (io, &r_io_plugin_default, mmo->filename, perm, mode, mmo);
	if (!d->name) {
		d->name = FUNC5 (file);
	}
	if (FUNC4 (d->name, "file://")) {
		char *oldname = d->name;
		d->name = FUNC5 (oldname + FUNC6 ("file://"));
		FUNC0 (oldname);
	}
	return d;
}