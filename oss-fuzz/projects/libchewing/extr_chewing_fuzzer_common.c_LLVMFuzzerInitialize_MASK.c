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
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int /*<<< orphan*/ ) ; 
 char* FUNC4 (char*) ; 
 char* userphrase_path ; 

int FUNC5(int* argc, char*** argv) {
  char* exe_path = (*argv)[0];

  // dirname() can modify its argument.
  char* exe_path_copy = FUNC4(exe_path);
  char* dir = FUNC0(exe_path_copy);

  // Assume data files are at the same location as executable.
  FUNC3("CHEWING_PATH", dir, 0);
  FUNC1(exe_path_copy);

  // Specify user db of this process. So we can run multiple fuzzers at the
  // same time.
  FUNC2(userphrase_path);
  FUNC3("TEST_USERPHRASE_PATH", userphrase_path, 0);
  return 0;
}