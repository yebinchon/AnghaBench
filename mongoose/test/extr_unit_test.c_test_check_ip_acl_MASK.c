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
typedef  int uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 

__attribute__((used)) static const char *FUNC2(void) {
  uint32_t ip = 0x01020304;
  FUNC0(FUNC1(NULL, ip), 1);
  FUNC0(FUNC1("", ip), 1);
  FUNC0(FUNC1("invalid", ip), -1);
  FUNC0(FUNC1("-0.0.0.0/0", ip), 0);
  FUNC0(FUNC1("-0.0.0.0/0,+1.0.0.0/8", ip), 1);
  FUNC0(FUNC1("-0.0.0.0/0,+1.2.3.4", ip), 1);
  FUNC0(FUNC1("-0.0.0.0/0,+1.0.0.0/16", ip), 0);
  return NULL;
}