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
struct in_addr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int FUNC0 (int /*<<< orphan*/ ,char const*,struct in_addr*) ; 

int FUNC1(const char *cp, struct in_addr *inp) {
  /* We don't have aton, but have pton in mbed */
  return FUNC0(AF_INET, cp, inp);
}