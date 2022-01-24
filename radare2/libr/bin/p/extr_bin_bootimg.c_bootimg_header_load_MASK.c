#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ut8 ;
typedef  int /*<<< orphan*/  ut64 ;
struct TYPE_5__ {scalar_t__ extra_cmdline; scalar_t__* id; scalar_t__ cmdline; scalar_t__ name; } ;
struct TYPE_4__ {int /*<<< orphan*/  buf; TYPE_2__ bi; } ;
typedef  int /*<<< orphan*/  Sdb ;
typedef  TYPE_1__ BootImageObj ;
typedef  TYPE_2__ BootImage ;

/* Variables and functions */
 int /*<<< orphan*/  BOOT_ARGS_SIZE ; 
 int /*<<< orphan*/  BOOT_EXTRA_ARGS_SIZE ; 
 int /*<<< orphan*/  BOOT_NAME_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(BootImageObj *obj, Sdb *db) {
	char *n;
	int i;
	if (FUNC2 (obj->buf) < sizeof (BootImage)) {
		return false;
	}
	// TODO make it endian-safe (void)r_buf_fread_at (buf, 0, (ut8*)bi, "IIiiiiiiiiiiii", 1);
	BootImage *bi = &obj->bi;
	(void) FUNC1 (obj->buf, 0, (ut8 *)bi, sizeof (BootImage));
	if ((n = FUNC3 ((char *) bi->name, BOOT_NAME_SIZE))) {
		FUNC5 (db, "name", n, 0);
		FUNC0 (n);
	}
	if ((n = FUNC3 ((char *) bi->cmdline, BOOT_ARGS_SIZE))) {
		FUNC5 (db, "cmdline", n, 0);
		FUNC0 (n);
	}
	for (i = 0; i < 8; i++) {
		FUNC4 (db, "id", (ut64) bi->id[i], 0);
	}
	if ((n = FUNC3 ((char *) bi->extra_cmdline, BOOT_EXTRA_ARGS_SIZE))) {
		FUNC5 (db, "extra_cmdline", n, 0);
		FUNC0 (n);
	}
	return true;
}