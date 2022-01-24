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
 char* FUNC0 (char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*) ; 
 size_t FUNC3 (char const*) ; 

void FUNC4(const char *a, const char *e, int len) {
  char *ae, *ee;
  if (len < 0) {
    len = FUNC3(a);
    if (FUNC3(e) > (size_t) len) len = FUNC3(e);
  }
  ae = FUNC0(a, len);
  ee = FUNC0(e, len);
  FUNC2("Expected: %s\nActual  : %s\n", ee, ae);
  FUNC1(ae);
  FUNC1(ee);
}