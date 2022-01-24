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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 scalar_t__ FUNC3 (char*,char*,int) ; 

__attribute__((used)) static const char *FUNC4(void) {
  char buf[20];

  FUNC0(FUNC3("localhost", buf, sizeof(buf)) > 0);
  FUNC2(buf, "127.0.0.1");

  FUNC1(FUNC3("please_dont_name_a_host_like_ths", buf, sizeof(buf)),
            0);
  return NULL;
}