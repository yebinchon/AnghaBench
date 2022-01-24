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
struct file_info {int file_size; int /*<<< orphan*/  file_name; scalar_t__ file_data; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int footer_sz ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (scalar_t__,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,long,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int header_sz ; 
 scalar_t__ is_header ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct file_info* finfo) {
	FILE* fp = NULL;

	int file_sz = 0;
	int extra_sz;
	int hdr_pos;
	int img_pos;

	if (!finfo || !finfo->file_name) {
		FUNC1("Invalid pointer provided!\n");
		return -1;
	}

	FUNC0("Opening file: %s\n", finfo->file_name);

	if (!(fp = FUNC3(finfo->file_name, "rb"))) {
		FUNC1("Error opening file: %s\n", finfo->file_name);
		return -1;
	}

	/* Get filesize */
	FUNC9(fp);
	FUNC5(fp, 0L, SEEK_END);
	file_sz = FUNC6(fp);
	FUNC9(fp);

	if (file_sz < 1) {
		FUNC1("Error getting filesize: %s\n", finfo->file_name);
		FUNC2(fp);
		return -1;
	}

	if (is_header) {
		extra_sz = header_sz;
		hdr_pos = 0;
		img_pos = header_sz;
	} else {
		extra_sz = footer_sz;
		hdr_pos = file_sz;
		img_pos = 0;
	}

	FUNC0("Filesize: %i\n", file_sz);
	finfo->file_size = file_sz + extra_sz;

	if (!(finfo->file_data = FUNC7(finfo->file_size))) {
		FUNC1("Out of memory!\n");
		FUNC2(fp);
		return -1;
	}

	/* init header/footer bytes */
	FUNC8(finfo->file_data + hdr_pos, 0, extra_sz);

	/* read file and take care of leading header if exists */
	if (FUNC4(finfo->file_data + img_pos, 1, file_sz, fp) != file_sz) {
		FUNC1("Error reading file %s\n", finfo->file_name);
		FUNC2(fp);
		return -1;
	}

	FUNC0("File: read successful\n");
	FUNC2(fp);

	return hdr_pos;
}