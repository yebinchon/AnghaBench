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
 char* FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int FUNC4 (char*) ; 

int FUNC5(int argc, char *argv[])
{
  char *md5sum = NULL, buf[65];

  if (argc < 3) {
    FUNC1(stderr, "USAGE: %s <correct MD5 sum> <file>\n", argv[0]);
    return -1;
  }

  if (FUNC4(argv[1]) != 32)
    FUNC1(stderr, "WARNING: MD5 hash size is wrong.\n");

  md5sum = FUNC0(argv[2], buf);
  if (!md5sum) {
    FUNC2("Could not obtain MD5 sum");
    return -1;
  }

  if (!FUNC3(md5sum, argv[1])) {
    FUNC1(stderr, "%s: OK\n", argv[2]);
    return 0;
  } else {
    FUNC1(stderr, "%s: FAILED.  Checksum is %s\n", argv[2], md5sum);
    return -1;
  }
}