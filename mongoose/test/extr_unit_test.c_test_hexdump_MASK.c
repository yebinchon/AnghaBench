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
typedef  int /*<<< orphan*/  got ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,scalar_t__,char*,int) ; 
 scalar_t__ FUNC3 (char const*) ; 

__attribute__((used)) static const char *FUNC4(void) {
  const char *src = "\1\2\3\4abcd";
  char got[256];

  const char *want =
      "0000  01 02 03 04 61 62 63 64"
      "                          ....abcd\n";
  FUNC0(FUNC2(src, FUNC3(src), got, sizeof(got)), (int) FUNC3(want));
  FUNC1(got, want);
  return NULL;
}