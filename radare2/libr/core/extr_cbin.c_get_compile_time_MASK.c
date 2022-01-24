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
typedef  int /*<<< orphan*/  Sdb ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static const char* FUNC2(Sdb *binFileSdb) {
	Sdb *info_ns = FUNC1 (binFileSdb, "info", false);
	const char *timeDateStamp_string = FUNC0 (info_ns,
		"image_file_header.TimeDateStamp_string", 0);
	return timeDateStamp_string;
}