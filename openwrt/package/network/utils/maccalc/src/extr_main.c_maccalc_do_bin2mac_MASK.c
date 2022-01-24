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
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  mac ;

/* Variables and functions */
 int ERR_INVALID ; 
 int ERR_IO ; 
 int MAC_ADDRESS_LEN ; 
 int /*<<< orphan*/  STDIN_FILENO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static int FUNC4(int argc, const char *argv[])
{
	unsigned char mac[MAC_ADDRESS_LEN];
	ssize_t c;

	if (argc != 0) {
		FUNC3();
		return ERR_INVALID;
	}

	c = FUNC2(STDIN_FILENO, mac, sizeof(mac));
	if (c != sizeof(mac)) {
		FUNC0(stderr, "failed to read from stdin\n");
		return ERR_IO;
	}

	FUNC1(mac);
	return 0;
}