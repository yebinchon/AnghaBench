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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 

__attribute__((used)) static void FUNC1() {
	FUNC0("Usage:\n");
	FUNC0("\n");
	FUNC0("Checking TRX file:\n");
	FUNC0("\totrx check <file> [options]\tcheck if file is a valid TRX\n");
	FUNC0("\t-o offset\t\t\toffset of TRX data in file (default: 0)\n");
	FUNC0("\n");
	FUNC0("Creating new TRX file:\n");
	FUNC0("\totrx create <file> [options] [partitions]\n");
	FUNC0("\t-f file\t\t\t\t[partition] start new partition with content copied from file\n");
	FUNC0("\t-A file\t\t\t\t[partition] append current partition with content copied from file\n");
	FUNC0("\t-a alignment\t\t\t[partition] align current partition\n");
	FUNC0("\t-b offset\t\t\t[partition] append zeros to partition till reaching absolute offset\n");
	FUNC0("\n");
	FUNC0("Extracting from TRX file:\n");
	FUNC0("\totrx extract <file> [options]\textract partitions from TRX file\n");
	FUNC0("\t-o offset\t\t\toffset of TRX data in file (default: 0)\n");
	FUNC0("\t-1 file\t\t\t\tfile to extract 1st partition to (optional)\n");
	FUNC0("\t-2 file\t\t\t\tfile to extract 2nd partition to (optional)\n");
	FUNC0("\t-3 file\t\t\t\tfile to extract 3rd partition to (optional)\n");
}