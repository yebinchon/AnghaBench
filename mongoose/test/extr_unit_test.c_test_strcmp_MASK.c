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
struct mg_str {char* p; int /*<<< orphan*/  len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct mg_str*,char*) ; 
 scalar_t__ FUNC3 (struct mg_str*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static const char *FUNC5(void) {
  struct mg_str s1;

  s1.p = "aa";
  s1.len = FUNC4(s1.p);
  FUNC1(FUNC2(&s1, "aa"), 0);
  FUNC1(FUNC3(&s1, "aa"), 0);
  FUNC0(FUNC2(&s1, "ab") < 0);
  FUNC0(FUNC3(&s1, "ab") < 0);
  FUNC0(FUNC2(&s1, "abb") < 0);
  FUNC0(FUNC3(&s1, "abb") < 0);
  FUNC0(FUNC2(&s1, "b") < 0);
  FUNC0(FUNC3(&s1, "b") < 0);
  return NULL;
}