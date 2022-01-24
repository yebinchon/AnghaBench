#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct grub_fs {scalar_t__ (* open ) (struct grub_file*,char*) ;scalar_t__ (* read ) (struct grub_file*,char*,int /*<<< orphan*/ ) ;scalar_t__ (* dir ) (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* close ) (struct grub_file*) ;} ;
struct grub_file {int /*<<< orphan*/  device; int /*<<< orphan*/  size; } ;
typedef  scalar_t__ grub_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  IMGFILE ; 
 int /*<<< orphan*/  dirhook ; 
 struct grub_fs grub_ext2_fs ; 
 int /*<<< orphan*/  FUNC0 () ; 
 struct grub_file* FUNC1 (struct grub_fs*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 scalar_t__ FUNC3 (struct grub_file*,char*) ; 
 scalar_t__ FUNC4 (struct grub_file*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct grub_file*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,int /*<<< orphan*/ ) ; 

int FUNC8() {
	struct grub_file *file;
	struct grub_fs *e2;
	grub_err_t err;

	e2 = &grub_ext2_fs;
	file = FUNC1 (e2, IMGFILE);
	if (file == NULL) {
		FUNC2 ("oops\n");
		return 0;
	}

	err = e2->open (file, "/test");
	if (err == 0) {
		char buf[1024];
		err = e2->read (file, buf, file->size);
//file->read_hook (2, 0, 0);
		FUNC7 (1, buf, file->size);
		e2->close (file);

		// Root directory list
		err = e2->dir (file->device, "/", dirhook, 0);
		if (err != 0)
			FUNC0 ();
	} else {
		FUNC0 ();
		FUNC2 ("error is : %d\n", err);
		return 0;
	}
	return 1;
}