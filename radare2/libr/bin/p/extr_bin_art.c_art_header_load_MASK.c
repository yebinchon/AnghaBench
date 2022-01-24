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
struct TYPE_5__ {int /*<<< orphan*/  compile_pic; int /*<<< orphan*/  image_roots; int /*<<< orphan*/  patch_delta; int /*<<< orphan*/  oat_data_end; int /*<<< orphan*/  oat_data_begin; int /*<<< orphan*/  oat_file_end; int /*<<< orphan*/  oat_file_begin; int /*<<< orphan*/ * version; int /*<<< orphan*/  checksum; int /*<<< orphan*/  image_size; int /*<<< orphan*/  image_base; } ;
struct TYPE_4__ {int /*<<< orphan*/  buf; TYPE_2__ art; } ;
typedef  int /*<<< orphan*/  Sdb ;
typedef  TYPE_1__ ArtObj ;
typedef  TYPE_2__ ARTHeader ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(ArtObj *ao, Sdb *db) {
	/* TODO: handle read errors here */
	if (FUNC1 (ao->buf) < sizeof (ARTHeader)) {
		return false;
	}
	ARTHeader *art = &ao->art;
	(void) FUNC0 (ao->buf, 0, (ut8 *) art, "IIiiiiiiiiiiii", 1);
	FUNC3 (db, "img.base", FUNC2 ("0x%x", art->image_base), 0);
	FUNC3 (db, "img.size", FUNC2 ("0x%x", art->image_size), 0);
	FUNC3 (db, "art.checksum", FUNC2 ("0x%x", art->checksum), 0);
	FUNC3 (db, "art.version", FUNC2 ("%c%c%c",
			art->version[0], art->version[1], art->version[2]), 0);
	FUNC3 (db, "oat.begin", FUNC2 ("0x%x", art->oat_file_begin), 0);
	FUNC3 (db, "oat.end", FUNC2 ("0x%x", art->oat_file_end), 0);
	FUNC3 (db, "oat_data.begin", FUNC2 ("0x%x", art->oat_data_begin), 0);
	FUNC3 (db, "oat_data.end", FUNC2 ("0x%x", art->oat_data_end), 0);
	FUNC3 (db, "patch_delta", FUNC2 ("0x%x", art->patch_delta), 0);
	FUNC3 (db, "image_roots", FUNC2 ("0x%x", art->image_roots), 0);
	FUNC3 (db, "compile_pic", FUNC2 ("0x%x", art->compile_pic), 0);
	return true;
}