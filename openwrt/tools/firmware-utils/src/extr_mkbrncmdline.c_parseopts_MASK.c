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
 int FUNC0 (int,char**,char*) ; 
 char* input_file ; 
 int /*<<< orphan*/  loadaddr ; 
 char* optarg ; 
 scalar_t__ optind ; 
 char* output_file ; 
 int /*<<< orphan*/  FUNC1 (char*,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static void FUNC3(int *argc, char ***argv)
{
	char *endptr;
	int res;

	while ((res = FUNC0(*argc, *argv, "a:i:o:")) != -1) {
		switch (res) {
		default:
			FUNC2("Unknown option");
			break;
		case 'a':
			loadaddr = FUNC1(optarg, &endptr, 0);
			if (endptr == optarg || *endptr != 0)
				FUNC2("loadaddress must be a decimal or hexadecimal 32-bit value");
			break;
		case 'i':
			input_file = optarg;
			break;
		case 'o':
			output_file = optarg;
			break;
		}
	}
	*argc -= optind;
	*argv += optind;
}