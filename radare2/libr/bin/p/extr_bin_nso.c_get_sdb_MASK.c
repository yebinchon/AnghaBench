#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  sdb; } ;
typedef  int /*<<< orphan*/  Sdb ;
typedef  TYPE_1__ RBinFile ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static Sdb *FUNC4(RBinFile *bf) {
	Sdb *kv = FUNC0 ();
	FUNC2 (kv, "nso_start.offset", 0, 0);
	FUNC2 (kv, "nso_start.size", 16, 0);
	FUNC3 (kv, "nso_start.format", "xxq unused mod_memoffset padding", 0);
	FUNC2 (kv, "nso_header.offset", 0, 0);
	FUNC2 (kv, "nso_header.size", 0x40, 0);
	FUNC3 (kv, "nso_header.format", "xxxxxxxxxxxx magic unk size unk2 text_offset text_size ro_offset ro_size data_offset data_size bss_size unk3", 0);
	FUNC1 (bf->sdb, "info", kv);
	return kv;
}